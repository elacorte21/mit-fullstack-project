using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MVCManukauTech.ViewModels
{
    public class SubscribeDetailsForCart
    {
        public int SubscribeId { get; set; }
        [Key]
        public int LineNumber { get; set; }
        public string MembershipId { get; set; }
        public string MembershipName { get; set; }
        public Nullable<int> Quantity { get; set; }
        public Nullable<decimal> MembershipCost { get; set; }
    }
}
