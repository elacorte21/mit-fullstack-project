using System;
using System.Collections.Generic;

namespace MVCManukauTech.Models.DB
{
    public partial class SubscribeStatus
    {
        public SubscribeStatus()
        {
            Subscribe = new HashSet<Subscribe>();
        }

        public int SubscribeStatusId { get; set; }
        public string SubscribeStatusDescription { get; set; }

        public virtual ICollection<Subscribe> Subscribe { get; set; }
    }
}
