﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Kohvimasin_tooContainer : DbContext
    {
        public Kohvimasin_tooContainer()
            : base("name=Kohvimasin_tooContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Kohviautomaat> KohviautomaatSet { get; set; }
        public virtual DbSet<Topsejuua> TopsejuuaSet { get; set; }
        public virtual DbSet<Topsepakis> TopsepakisSet { get; set; }
    }
}
