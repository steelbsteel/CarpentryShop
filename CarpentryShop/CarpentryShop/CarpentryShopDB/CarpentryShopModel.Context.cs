﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CarpentryShopEntities : DbContext
    {
        public CarpentryShopEntities()
            : base("name=CarpentryShopEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Machines> Machines { get; set; }
        public virtual DbSet<Carpenter> Carpenter { get; set; }
        public virtual DbSet<ComponentReceipts> ComponentReceipts { get; set; }
        public virtual DbSet<Components> Components { get; set; }
        public virtual DbSet<DetailReceipts> DetailReceipts { get; set; }
        public virtual DbSet<InventoryCarpenter> InventoryCarpenter { get; set; }
        public virtual DbSet<InventoryMaterials> InventoryMaterials { get; set; }
        public virtual DbSet<InventoryMetalDetails> InventoryMetalDetails { get; set; }
        public virtual DbSet<InventoryTools> InventoryTools { get; set; }
        public virtual DbSet<InventoryWoodDetails> InventoryWoodDetails { get; set; }
        public virtual DbSet<Materials> Materials { get; set; }
        public virtual DbSet<MetalDetails> MetalDetails { get; set; }
        public virtual DbSet<ProductReceiptDetails> ProductReceiptDetails { get; set; }
        public virtual DbSet<ProductReceipts> ProductReceipts { get; set; }
        public virtual DbSet<ProductReceiptsComponents> ProductReceiptsComponents { get; set; }
        public virtual DbSet<Products> Products { get; set; }
        public virtual DbSet<Tools> Tools { get; set; }
        public virtual DbSet<TypeMaterials> TypeMaterials { get; set; }
        public virtual DbSet<WoodDetails> WoodDetails { get; set; }
    }
}
