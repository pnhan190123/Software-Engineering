//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebProject.dbEntities
{
    using System;
    using System.Collections.Generic;
    
    public partial class FinancialPaperDetail
    {
        public System.Guid KeyDetail { get; set; }
        public Nullable<System.Guid> KeyFinace { get; set; }
        public string BARCODE { get; set; }
        public Nullable<int> Quantily { get; set; }
        public Nullable<int> Discount { get; set; }
        public Nullable<double> Price { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public Nullable<int> No { get; set; }
        public Nullable<double> Amount { get; set; }
    }
}
