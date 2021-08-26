using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication22.Models
{
    public class help
    {
        public int issue_id { get; set; }
        public int customer_id { get; set; }
        public string issue { get; set; }
        public string description { get; set; }
        public int contact_no { get; set; }
        public string status { get; set; }
    }
}