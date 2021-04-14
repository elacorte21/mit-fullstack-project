using System;
using System.Collections.Generic;

namespace MVCManukauTech.Models.DB
{
    public partial class Membership
    {
        public Membership()
        {
            SubscribeDetail = new HashSet<SubscribeDetail>();
        }

        public string MembershipId { get; set; }
        public string MembershipName { get; set; }
        public int? MemberDiscount { get; set; }
        public string MembershipDesc { get; set; }
        public string MembershipImage { get; set; }
        public double? MembershipCost { get; set; }
        public int Expiry { get; set; }

        public virtual ICollection<SubscribeDetail> SubscribeDetail { get; set; }

        internal void ForEach(Action<object> p)
        {
            throw new NotImplementedException();
        }
    }
}
