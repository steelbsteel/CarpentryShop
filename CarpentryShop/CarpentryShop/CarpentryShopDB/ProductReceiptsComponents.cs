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
    
    public partial class ProductReceiptsComponents
    {
        public int idProductReceiptComponents { get; set; }
        public Nullable<int> idComponent { get; set; }
        public int idProductReceipt { get; set; }
    
        public virtual Components Components { get; set; }
        public virtual ProductReceipts ProductReceipts { get; set; }
    }
}
