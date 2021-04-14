using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MVCManukauTech.Models.DB;
using Newtonsoft.Json;
using Microsoft.AspNetCore.Authorization;

namespace MVCManukauTech.Controllers
{
    [Authorize(Roles = "Admin")]
    public class ReportsController : Controller
    {
        private readonly XSpyContext _context;
        public ReportsController(XSpyContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            string sql = @"SELECT o.OrderId, o.Username, o.DateOfOrder, o.TransactionId, o.GrandTotal 
            FROM [Order] o";
            var ordersSummary = _context.ReportsViewModel.FromSqlRaw(sql).ToList();
            return View(ordersSummary);
        }
    }
}
