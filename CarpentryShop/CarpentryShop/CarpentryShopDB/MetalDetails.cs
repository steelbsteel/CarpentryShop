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
    
    public partial class MetalDetails
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MetalDetails()
        {
            this.ComponentReceipts = new HashSet<ComponentReceipts>();
            this.InventoryMetalDetails = new HashSet<InventoryMetalDetails>();
            this.ProductReceiptDetails = new HashSet<ProductReceiptDetails>();
        }
    
        public int idMetalDetail { get; set; }
        public string NameMetalDetail { get; set; }
        public byte[] ImageMetalDetail { get; set; }
        public Nullable<int> idDetailReceipt { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ComponentReceipts> ComponentReceipts { get; set; }
        public virtual DetailReceipts DetailReceipts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryMetalDetails> InventoryMetalDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductReceiptDetails> ProductReceiptDetails { get; set; }
    }
}
