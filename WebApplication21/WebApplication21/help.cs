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
    
    public partial class help
    {
        public int issue_id { get; set; }
        public Nullable<int> customer_id { get; set; }
        public string issue { get; set; }
        public string description { get; set; }
        public Nullable<int> contact_no { get; set; }
        public string status { get; set; }
    
        public virtual customer customer { get; set; }
    }
}