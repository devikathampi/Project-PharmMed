//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication21
{
    using System;
    using System.Collections.Generic;
    
    public partial class medicine
    {
        public int med_id { get; set; }
        public string med_name { get; set; }
        public string manufacturer { get; set; }
        public string disease { get; set; }
        public string mfg_date { get; set; }
        public string exp_date { get; set; }
        public Nullable<int> cost { get; set; }
        public Nullable<int> avail_qty { get; set; }
    }
}
