//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Kohvimasiin
{
    using System;
    using System.Collections.Generic;
    
    public partial class Topsepakis
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Topsepakis()
        {
            this.Kohviautomaat = new HashSet<Kohviautomaat>();
        }
    
        public int topsepakisId { get; set; }
        public int topsepakis { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Kohviautomaat> Kohviautomaat { get; set; }
    }
}
