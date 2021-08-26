using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication22.Models
{
    public class med_order
    {
        public int order_id { get; set; }
        public int customer_id { get; set; }
        public string med_id { get; set; }
        public int amount { get; set; }
        public string mode_of_payment { get; set; }
        public string order_date { get; set; }
    }
}