//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CarpentryShop.CarpentryShopDB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Carpenter
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Carpenter()
        {
            this.InventoryCarpenter = new HashSet<InventoryCarpenter>();
        }
    
        public int idCarpenter { get; set; }
        public string NameCarpenter { get; set; }
        public string SurnameCarpenter { get; set; }
        public byte[] ImageCarpenter { get; set; }
        public int StaminaCarpenter { get; set; }
        public int BalanceCarpenter { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryCarpenter> InventoryCarpenter { get; set; }
    }
}