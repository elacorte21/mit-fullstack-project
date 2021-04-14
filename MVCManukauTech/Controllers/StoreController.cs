using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MVCManukauTech.Models.DB;
using Microsoft.AspNetCore.Http;

namespace MVCManukauTech.Controllers
{
    public class StoreController : Controller
    {
        private readonly XSpyContext _context;

        public StoreController(XSpyContext context)
        {
            _context = context;
        }

        //Eddril - added nulls to match ViewModel
        // GET: Store?CategoryName=Travel
        public IActionResult Index()
        {
            //140903 JPC add CategoryName to SELECT list of fields
            string SQL = @"SELECT DISTINCT p.ProductId, p.CategoryId AS CategoryId, p.Name, p.ImageFileName, p.UnitCost, 
            p.Description, CategoryName, '' AS Username, NULL AS ExpiryDate, NULL AS MemberDiscount 
            FROM Product p 
            INNER JOIN Category c ON p.CategoryId = c.CategoryId";

            string categoryName = Request.Query["CategoryName"];

            if (categoryName != null)
            {
                //140903 JPC security check - if ProductId is dodgy then return bad request and log the fact 
                //  of a possible hacker attack.  Excessive length or containing possible control characters
                //  are cause for concern!  TODO move this into a separate reusable code method with more sophistication.
                if (categoryName.Length > 20 || categoryName.IndexOf("'") > -1 || categoryName.IndexOf("#") > -1)
                {
                    //TODO Code to log this event and send alert email to admin
                    return BadRequest(); // Http status code 400
                }

                //140903 JPC  Passed the above test so extend SQL
                //150807 JPC Security improvement @p0
                SQL += " WHERE CategoryName = @p0";
                //SQL += " WHERE CategoryName = '{0}'";
                //SQL = String.Format(SQL, CategoryName);
                //Send extra info to the view that this is the selected CategoryName
                ViewBag.CategoryName = categoryName;
            }

            //150807 JPC Security improvement implementation of @p0
            var products = _context.StoreViewModel.FromSqlRaw(SQL, categoryName).ToList();

            //Eddril - Get Membership details and link to products
            var subscribeDetail = _context.SubscribeDetail
                    .Include(a => a.Subscribe)
                    .OrderByDescending(t => t.Subscribe.ExpiryDate)
                    .FirstOrDefault(a => a.UserName == User.Identity.Name);

            //Eddril - check if user is a member or subscribed to show member discount
            if (subscribeDetail != null)
            {
                //if (subscribeDetail.Subscribe.ExpiryDate > DateTime.Now)
                var memberships = _context.Membership.FirstOrDefault(a => a.MembershipId == subscribeDetail.MembershipId);

                if (memberships != null)
                {
                    products.ForEach(product =>
                    {
                        product.UserName = subscribeDetail.UserName;
                        product.ExpiryDate = subscribeDetail.Subscribe.ExpiryDate;
                        product.MemberDiscount = memberships.MemberDiscount;
                    });
                }
            }

            return View(products);
        }

        // GET: Store/Details?ProductId=1MORE4ME
        public IActionResult Details(string ProductId)
        {
            if (ProductId == null)
            {
                return BadRequest(); // Http status code 400
            }
            //140903 JPC security check - if ProductId is dodgy then return bad request and log the fact 
            //  of a possible hacker attack.  Excessive length or containing possible control characters
            //  are cause for concern!  TODO move this into a separate reusable code method with more sophistication.
            if (ProductId.Length > 20 || ProductId.IndexOf("'") > -1 || ProductId.IndexOf("#") > -1)
            {
                //TODO Code to log this event and send alert email to admin
                return BadRequest(); // Http status code 400
            }

            //150807 JPC Security improvement implementation of @p0
            //20180312 JPC change to query based on class CatalogViewModel
            //  Change above code to give all of the description rather than summarising with the first 100 characters
            string SQL = @"SELECT p.ProductId, p.CategoryId AS CategoryId, p.Name, p.ImageFileName, p.UnitCost, 
            p.Description, CategoryName, '' AS Username, NULL AS ExpiryDate, NULL AS MemberDiscount 
            FROM Product p 
            INNER JOIN Category c ON p.CategoryId = c.CategoryId 
            WHERE ProductId = @p0";

            //140904 JPC case of one product to look at the details.
            //  SQL gives some kind of collection where we need to clean that up with ToList() then take element [0]
            //150807 JPC Security improvement implementation of @p0 substitute ProductId
            var product = _context.StoreViewModel.FromSqlRaw(SQL, ProductId).ToList()[0];

            //Eddril - Get Membership details and link to products
            var subscribeDetail = _context.SubscribeDetail
                    .Include(a => a.Subscribe)
                    .OrderByDescending(t => t.Subscribe.ExpiryDate)
                    .FirstOrDefault(a => a.UserName == User.Identity.Name);

            //Eddril - check if user is a member or subscribed to show member discount
            if (subscribeDetail != null)
            {
                //if (subscribeDetail.Subscribe.ExpiryDate > DateTime.Now)
                var memberships = _context.Membership.FirstOrDefault(a => a.MembershipId == subscribeDetail.MembershipId);

                if (memberships != null)
                {
                    product.UserName = subscribeDetail.UserName;
                    product.ExpiryDate = subscribeDetail.Subscribe.ExpiryDate;
                    product.MemberDiscount = memberships.MemberDiscount;
                }
            }

            if (product == null)
            {
                return NotFound(); //Http status code 404
            }

            return View(product);
        }

    }
}
