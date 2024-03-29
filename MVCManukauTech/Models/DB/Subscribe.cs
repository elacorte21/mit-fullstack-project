﻿using System;
using System.Collections.Generic;

namespace MVCManukauTech.Models.DB
{
    public partial class Subscribe
    {
        public Subscribe()
        {
            SubscribeDetail = new HashSet<SubscribeDetail>();
        }

        public int SubscribeId { get; set; }
        public string Username { get; set; }
        public string SessionId { get; set; }
        public int? SubscribeStatusId { get; set; }
        public DateTime? DateOfSession { get; set; }
        public DateTime? DateOfOrder { get; set; }
        public int? TransactionId { get; set; }
        public string Notes { get; set; }
        public string CustomerName { get; set; }
        public string DeliveryAddress { get; set; }
        public string Phone { get; set; }
        public string EmailAddress { get; set; }
        public string CardOwner { get; set; }
        public string CardType { get; set; }
        public DateTime? ExpiryDate { get; set; }

        public virtual SubscribeStatus SubscribeStatus { get; set; }
        public virtual ICollection<SubscribeDetail> SubscribeDetail { get; set; }
    }
}
