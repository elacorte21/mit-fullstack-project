﻿using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using MVCManukauTech.ViewModels;

namespace MVCManukauTech.Models.DB
{
    public partial class XSpyContext : DbContext
    {
        public XSpyContext()
        {
        }

        public XSpyContext(DbContextOptions<XSpyContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AspNetRoleClaims> AspNetRoleClaims { get; set; }
        public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUserRoles> AspNetUserRoles { get; set; }
        public virtual DbSet<AspNetUserTokens> AspNetUserTokens { get; set; }
        public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }
        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<OrderDetail> OrderDetail { get; set; }
        public virtual DbSet<OrderStatus> OrderStatus { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<Review> Review { get; set; }
        //2020-09-07 Eddril Tables
        public virtual DbSet<Membership> Membership { get; set; }
        public virtual DbSet<Subscribe> Subscribe { get; set; }
        public virtual DbSet<SubscribeDetail> SubscribeDetail { get; set; }
        public virtual DbSet<SubscribeStatus> SubscribeStatus { get; set; }
        //EDDRIL - custom viewmodels
        public virtual DbSet<StoreViewModel> StoreViewModel { get; set; }
        public virtual DbSet<OrderDetailsQueryForCart> OrderDetailsQueryForCart { get; set; }
        public virtual DbSet<GrandTotalViewModel> GrandTotalViewModel { get; set; }
        public virtual DbSet<SubscribeViewModel> SubscribeViewModel { get; set; }
        public virtual DbSet<SubscribeDetailsForCart> SubscribeDetailsForCart { get; set; }
        public virtual DbSet<ReportsViewModel> ReportsViewModel { get; set; }

        //2019-03-19 removed temp method OnConfiguring - replaced with service in Startup.cs

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.1-servicing-10028");

            modelBuilder.Entity<Membership>(entity =>
            {
                entity.Property(e => e.MembershipId).HasMaxLength(20);

                entity.Property(e => e.MembershipImage).HasMaxLength(20);

                entity.Property(e => e.MembershipName)
                    .HasMaxLength(50)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Subscribe>(entity =>
            {
                entity.Property(e => e.SubscribeId).ValueGeneratedNever();

                entity.Property(e => e.CardOwner).HasMaxLength(50);

                entity.Property(e => e.CardType).HasMaxLength(20);

                entity.Property(e => e.CustomerName).HasMaxLength(100);

                entity.Property(e => e.DateOfOrder).HasColumnType("datetime");

                entity.Property(e => e.DateOfSession).HasColumnType("datetime");

                entity.Property(e => e.DeliveryAddress).HasMaxLength(150);

                entity.Property(e => e.EmailAddress).HasMaxLength(255);

                entity.Property(e => e.ExpiryDate).HasColumnType("datetime");

                entity.Property(e => e.Notes).HasMaxLength(255);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.SessionId).HasMaxLength(128);

                entity.Property(e => e.Username).HasMaxLength(20);

                entity.HasOne(d => d.SubscribeStatus)
                    .WithMany(p => p.Subscribe)
                    .HasForeignKey(d => d.SubscribeStatusId)
                    .HasConstraintName("FK_Subscribe_SubscribeStatus");
            });

            modelBuilder.Entity<SubscribeDetail>(entity =>
            {
                entity.HasKey(e => new { e.SubscribeId, e.LineNumber });

                entity.Property(e => e.MembershipId).HasMaxLength(20);

                entity.HasOne(d => d.Membership)
                    .WithMany(p => p.SubscribeDetail)
                    .HasForeignKey(d => d.MembershipId)
                    .HasConstraintName("FK_SubscribeDetail_Membership");

                entity.HasOne(d => d.Subscribe)
                    .WithMany(p => p.SubscribeDetail)
                    .HasForeignKey(d => d.SubscribeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SubscribeDetail_Subscribe");
            });

            modelBuilder.Entity<SubscribeStatus>(entity =>
            {
                entity.Property(e => e.SubscribeStatusId).ValueGeneratedNever();

                entity.Property(e => e.SubscribeStatusDescription).HasMaxLength(255);
            });

            modelBuilder.Entity<AspNetRoleClaims>(entity =>
            {
                entity.HasIndex(e => e.RoleId);

                entity.Property(e => e.RoleId).IsRequired();

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetRoleClaims)
                    .HasForeignKey(d => d.RoleId);
            });

            modelBuilder.Entity<AspNetRoles>(entity =>
            {
                entity.HasIndex(e => e.NormalizedName)
                    .HasName("RoleNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedName] IS NOT NULL)");

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Name).HasMaxLength(256);

                entity.Property(e => e.NormalizedName).HasMaxLength(256);
            });

            modelBuilder.Entity<AspNetUserClaims>(entity =>
            {
                entity.HasIndex(e => e.UserId);

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserClaims)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserLogins>(entity =>
            {
                entity.HasKey(e => new { e.LoginProvider, e.ProviderKey });

                entity.HasIndex(e => e.UserId);

                entity.Property(e => e.LoginProvider).HasMaxLength(128);

                entity.Property(e => e.ProviderKey).HasMaxLength(128);

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserLogins)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserRoles>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.RoleId });

                entity.HasIndex(e => e.RoleId);

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.RoleId);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserTokens>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.LoginProvider, e.Name });

                entity.Property(e => e.LoginProvider).HasMaxLength(128);

                entity.Property(e => e.Name).HasMaxLength(128);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserTokens)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUsers>(entity =>
            {
                entity.HasIndex(e => e.NormalizedEmail)
                    .HasName("EmailIndex");

                entity.HasIndex(e => e.NormalizedUserName)
                    .HasName("UserNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedUserName] IS NOT NULL)");

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.NormalizedEmail).HasMaxLength(256);

                entity.Property(e => e.NormalizedUserName).HasMaxLength(256);

                entity.Property(e => e.UserName).HasMaxLength(256);
            });

            modelBuilder.Entity<Category>(entity =>
            {
                entity.Property(e => e.CategoryId).ValueGeneratedNever();

                entity.Property(e => e.CategoryName).HasMaxLength(50);
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.Property(e => e.CardOwner).HasMaxLength(50);

                entity.Property(e => e.CardType).HasMaxLength(20);

                entity.Property(e => e.CustomerName).HasMaxLength(100);

                entity.Property(e => e.DateOfOrder).HasColumnType("datetime");

                entity.Property(e => e.DateOfSession).HasColumnType("datetime");

                entity.Property(e => e.DateOfShipping).HasColumnType("datetime");

                entity.Property(e => e.DeliveryAddress).HasMaxLength(150);

                entity.Property(e => e.EmailAddress).HasMaxLength(255);

                entity.Property(e => e.ExpiryDate).HasColumnType("datetime");

                entity.Property(e => e.Notes).HasMaxLength(255);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.SessionId).HasMaxLength(128);

                entity.Property(e => e.Username).HasMaxLength(20);

                entity.HasOne(d => d.OrderStatus)
                    .WithMany(p => p.Order)
                    .HasForeignKey(d => d.OrderStatusId)
                    .HasConstraintName("FK_Orders_OrderStatus");
            });

            modelBuilder.Entity<OrderDetail>(entity =>
            {
                entity.HasKey(e => new { e.OrderId, e.LineNumber })
                    .HasName("PK_OrderDetails");

                entity.Property(e => e.ProductId).HasMaxLength(20);

                entity.Property(e => e.UnitCost).HasColumnType("money");

                entity.HasOne(d => d.Order)
                    .WithMany(p => p.OrderDetail)
                    .HasForeignKey(d => d.OrderId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_OrderDetails_Orders");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.OrderDetail)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK_OrderDetails_Products");
            });

            modelBuilder.Entity<OrderStatus>(entity =>
            {
                entity.Property(e => e.OrderStatusId).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.Property(e => e.ProductId)
                    .HasMaxLength(20)
                    .ValueGeneratedNever();

                entity.Property(e => e.DownloadFileName).HasMaxLength(20);

                entity.Property(e => e.ImageFileName).HasMaxLength(20);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.Product)
                    .HasForeignKey(d => d.CategoryId)
                    .HasConstraintName("FK_Products_Categories");
            });

            modelBuilder.Entity<Review>(entity =>
            {
                entity.Property(e => e.ReviewId).ValueGeneratedNever();

                entity.Property(e => e.CustomerEmail).HasMaxLength(50);

                entity.Property(e => e.CustomerName).HasMaxLength(50);

                entity.Property(e => e.ProductId).HasMaxLength(20);

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.Review)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK_Reviews_Products");
            });
        }
    }
}
