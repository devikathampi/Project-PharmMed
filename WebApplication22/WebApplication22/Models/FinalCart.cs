using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication22.Models
{
    public class FinalCart
    {
        public int med_id { get; set; }
        public string med_name { get; set; }
        public int price { get; set; }
        public int quantity { get; set; }
        public int total_price { get; set; }
    }
}