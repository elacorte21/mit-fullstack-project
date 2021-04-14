using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace MVCManukauTech.ViewModels
{
    public class ReportsViewModel
    {
        //sql field list is - p.ProductID, p.Name, pm.Name AS ProductModel, pmx.Culture, pd.Description
        [Key]
        public int OrderId { get; set; }
        public string? Username { get; set; }
        public DateTime? DateOfOrder { get; set; }
        public int? TransactionId { get; set; }
        public decimal? GrandTotal { get; set; }
    }
}
