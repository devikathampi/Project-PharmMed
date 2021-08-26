using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication21.Models
{
    public class Admin
    {
        public int admin_id { get; set; }
        public string admin_name { get; set; }
        public string admin_pw { get; set; }
        public string dob { get; set; }
        public string gender { get; set; }
        public string emailid { get; set; }
        public string secqn { get; set; }
        public string secans { get; set; }
    }
}