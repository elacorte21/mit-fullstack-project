using System;
using System.Collections.Generic;

namespace MVCManukauTech.Models.DB
{
    public partial class SubscribeDetail
    {
        public int SubscribeId { get; set; }
        public int LineNumber { get; set; }
        public string MembershipId { get; set; }
        public string UserName { get; set; }
        public int? Quantity { get; set; }

        public virtual Membership Membership { get; set; }
        public virtual Subscribe Subscribe { get; set; }
    }
}
