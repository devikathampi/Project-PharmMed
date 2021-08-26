using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication21.Models
{
    public class Medicines
    {
        public int med_id { get; set; }
        public string med_name { get; set; }
        public string manufacturer { get; set; }
        public string disease { get; set; }
        public string mfg_date{ get; set; }
        public string exp_date { get; set; }
        public int cost { get; set; }
        public int avail_qty { get; set; }
    }
}