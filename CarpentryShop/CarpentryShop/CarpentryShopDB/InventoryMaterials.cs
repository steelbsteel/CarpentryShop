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
    
    public partial class InventoryMaterials
    {
        public int idInventoryMaterial { get; set; }
        public int idMaterial { get; set; }
        public int idInventory { get; set; }
    
        public virtual InventoryCarpenter InventoryCarpenter { get; set; }
        public virtual Materials Materials { get; set; }
    }
}
