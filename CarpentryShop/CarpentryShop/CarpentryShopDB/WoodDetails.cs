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
    
    public partial class WoodDetails
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public WoodDetails()
        {
            this.ComponentReceipts = new HashSet<ComponentReceipts>();
            this.InventoryWoodDetails = new HashSet<InventoryWoodDetails>();
            this.ProductReceiptDetails = new HashSet<ProductReceiptDetails>();
        }
    
        public int idWoodDetail { get; set; }
        public string NameWoodDetail { get; set; }
        public byte[] ImageWoodDetail { get; set; }
        public Nullable<int> idDetailReceipt { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ComponentReceipts> ComponentReceipts { get; set; }
        public virtual DetailReceipts DetailReceipts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryWoodDetails> InventoryWoodDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductReceiptDetails> ProductReceiptDetails { get; set; }
    }
}
