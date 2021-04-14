using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MVCManukauTech.ViewModels
{
    public class SubscribeViewModel
    {
        [Key]
        public string MembershipId { get; set; }
        public string UserName { get; set; }
        public string MembershipName { get; set; }
        public int MemberDiscount { get; set; }
        public string MembershipDesc { get; set; }
        public string MembershipImage { get; set; }
        public double MembershipCost { get; set; }
        public int Expiry { get; set; }
        public DateTime? ExpiryDate { get; set; }
    }
}
