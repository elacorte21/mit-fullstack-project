using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MVCManukauTech.Models.DB;
using Microsoft.AspNetCore.Http;
using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;

namespace MVCManukauTech.Controllers
{
    [Authorize]
    public class SubscribeController : Controller
    {
        private readonly XSpyContext _context;

        public SubscribeController(XSpyContext context)
        {
            _context = context;
        }

        //Eddril - added Null to SQL query to match ViewModel
        // GET: Catalog?CategoryName=Travel
        public IActionResult Index()
        {
            string sql = @"SELECT 
                    m.MembershipId, m.MembershipName, m.MembershipImage, 
                    m.MembershipCost, m.MemberDiscount, m.MembershipDesc, m.Expiry, '' as UserName, null as ExpiryDate 
                    from Membership m";
            var memberships = _context.SubscribeViewModel.FromSqlRaw(sql).ToList();

            var subscribeDetail = _context.SubscribeDetail
                .Include(a => a.Subscribe)
                .OrderByDescending(t => t.Subscribe.ExpiryDate)
                .FirstOrDefault(a => a.UserName == User.Identity.Name);

            //Eddril - check if user already subscribed
            if (subscribeDetail != null)
            {
                memberships.ForEach(membership =>
                {
                    if (membership.MembershipId == subscribeDetail.MembershipId)
                    {
                        membership.UserName = subscribeDetail.UserName;
                        membership.ExpiryDate = subscribeDetail.Subscribe.ExpiryDate;
                    }

                });
            }

            return View(memberships);

        }
    }
}

