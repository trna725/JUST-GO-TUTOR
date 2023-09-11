using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace project.Models;

public partial class dbEntities : DbContext
{
    public dbEntities()
    {
    }

    public dbEntities(DbContextOptions<dbEntities> options)
        : base(options)
    {
    }

    public virtual DbSet<Admin> Admin { get; set; }

    public virtual DbSet<Booking> Booking { get; set; }

    public virtual DbSet<Cart> Cart { get; set; }

    public virtual DbSet<CodeDatas> CodeDatas { get; set; }

    public virtual DbSet<Course_Detail> Course_Detail { get; set; }

    public virtual DbSet<Courses_Main> Courses_Main { get; set; }

    public virtual DbSet<Member> Member { get; set; }

    public virtual DbSet<Order_Detail> Order_Detail { get; set; }

    public virtual DbSet<Order_Main> Order_Main { get; set; }

    public virtual DbSet<Product> Product { get; set; }

    public virtual DbSet<Product_Pic> Product_Pic { get; set; }

    public virtual DbSet<Subject> Subject { get; set; }

    public virtual DbSet<Teacher> Teacher { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseSqlServer("Name=ConnectionStrings:dbconn");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Admin>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.HasIndex(e => e.AccountNo, "IX_Admin_ano").IsClustered();

            entity.Property(e => e.AccountNo).HasMaxLength(50);
            entity.Property(e => e.Address).HasMaxLength(250);
            entity.Property(e => e.Email).HasMaxLength(250);
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.Password).HasMaxLength(50);
            entity.Property(e => e.PhoneNumber).HasMaxLength(50);
            entity.Property(e => e.ValidateCode).HasMaxLength(250);
        });

        modelBuilder.Entity<Booking>(entity =>
        {
            entity.HasIndex(e => e.BookNo, "IX_Booking_bno");

            entity.Property(e => e.BookNo).HasMaxLength(50);
            entity.Property(e => e.CoursesNo).HasMaxLength(50);
            entity.Property(e => e.Date).HasColumnType("date");
            entity.Property(e => e.Loaction).HasMaxLength(250);
            entity.Property(e => e.Method).HasMaxLength(50);
            entity.Property(e => e.StudentNo).HasMaxLength(50);
            entity.Property(e => e.TeacherNo).HasMaxLength(50);
        });

        modelBuilder.Entity<Cart>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.HasIndex(e => e.CartNo, "IX_Cart_cno").IsClustered();

            entity.Property(e => e.Amount).HasColumnType("decimal(30, 2)");
            entity.Property(e => e.CartNo).HasMaxLength(50);
            entity.Property(e => e.CustomerNo).HasMaxLength(50);
            entity.Property(e => e.Price).HasColumnType("decimal(15, 2)");
            entity.Property(e => e.ProductNo).HasMaxLength(50);
        });

        modelBuilder.Entity<CodeDatas>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.Property(e => e.BaseNo).HasMaxLength(50);
            entity.Property(e => e.CodeName).HasMaxLength(50);
            entity.Property(e => e.CodeNo).HasMaxLength(50);
            entity.Property(e => e.CodeValue).HasMaxLength(250);
            entity.Property(e => e.ParentNo).HasMaxLength(50);
            entity.Property(e => e.Remark).HasMaxLength(250);
            entity.Property(e => e.SortNo)
                .HasMaxLength(50)
                .HasDefaultValueSql("(space((0)))");
        });

        modelBuilder.Entity<Course_Detail>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.HasIndex(e => e.CourseNo, "IX_Course_Detail_cno").IsClustered();

            entity.Property(e => e.Course).HasMaxLength(50);
            entity.Property(e => e.CourseNo).HasMaxLength(50);
            entity.Property(e => e.Date).HasColumnType("date");
            entity.Property(e => e.Hour).HasColumnType("decimal(20, 2)");
            entity.Property(e => e.TeacherNo).HasMaxLength(50);
        });

        modelBuilder.Entity<Courses_Main>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.HasIndex(e => e.CourseNo, "IX_Courses_Main").IsClustered();

            entity.Property(e => e.Amount).HasColumnType("decimal(7, 2)");
            entity.Property(e => e.Course).HasMaxLength(50);
            entity.Property(e => e.CourseNo).HasMaxLength(50);
            entity.Property(e => e.SubNo).HasMaxLength(250);
            entity.Property(e => e.TotalTime).HasColumnType("decimal(20, 2)");
            entity.Property(e => e.Type).HasMaxLength(50);
        });

        modelBuilder.Entity<Member>(entity =>
        {
            entity.HasKey(e => e.Id)
                .HasName("PK_Student")
                .IsClustered(false);

            entity.HasIndex(e => e.AccountNo, "IX_Student_ano").IsClustered();

            entity.Property(e => e.AccountNo).HasMaxLength(50);
            entity.Property(e => e.Address).HasMaxLength(250);
            entity.Property(e => e.Birthday).HasColumnType("date");
            entity.Property(e => e.Email).HasMaxLength(250);
            entity.Property(e => e.Job).HasMaxLength(250);
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.Password).HasMaxLength(50);
            entity.Property(e => e.PhoneNumber).HasMaxLength(50);
            entity.Property(e => e.ValidateCode).HasMaxLength(250);
        });

        modelBuilder.Entity<Order_Detail>(entity =>
        {
            entity.HasKey(e => e.Id)
                .HasName("PK_Order_Detail_1")
                .IsClustered(false);

            entity.HasIndex(e => e.OrderNo, "IX_Order_Detail").IsClustered();

            entity.Property(e => e.OrderNo).HasMaxLength(50);
            entity.Property(e => e.Price).HasColumnType("decimal(15, 2)");
            entity.Property(e => e.ProductNo).HasMaxLength(50);
        });

        modelBuilder.Entity<Order_Main>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.HasIndex(e => e.OrderNo, "IX_Order_Main_on").IsClustered();

            entity.Property(e => e.Address).HasMaxLength(250);
            entity.Property(e => e.Amount).HasColumnType("decimal(20, 2)");
            entity.Property(e => e.Currency).HasMaxLength(50);
            entity.Property(e => e.CustomerNo).HasMaxLength(50);
            entity.Property(e => e.Date).HasColumnType("date");
            entity.Property(e => e.OrderNo).HasMaxLength(50);
            entity.Property(e => e.Payment).HasMaxLength(50);
            entity.Property(e => e.Rate).HasColumnType("decimal(20, 2)");
            entity.Property(e => e.Shipment).HasMaxLength(50);
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.HasIndex(e => e.ProductNo, "IX_Product_pno").IsClustered();

            entity.Property(e => e.Abbr).HasMaxLength(50);
            entity.Property(e => e.Product1)
                .HasMaxLength(250)
                .HasColumnName("Product");
            entity.Property(e => e.ProductNo).HasMaxLength(50);
            entity.Property(e => e.Sale_Price)
                .HasColumnType("decimal(20, 2)")
                .HasColumnName("Sale Price");
            entity.Property(e => e.Spec).HasMaxLength(250);
            entity.Property(e => e.Type).HasMaxLength(50);
            entity.Property(e => e.Unit_Price)
                .HasColumnType("decimal(20, 2)")
                .HasColumnName("Unit Price");
        });

        modelBuilder.Entity<Product_Pic>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.HasIndex(e => e.ProductNo, "IX_Product_Pic_pno").IsClustered();

            entity.Property(e => e.Describe).HasMaxLength(250);
            entity.Property(e => e.ProductNo).HasMaxLength(50);
        });

        modelBuilder.Entity<Subject>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.HasIndex(e => e.SubNo, "IX_Subject_sno").IsClustered();

            entity.Property(e => e.SubName).HasMaxLength(50);
            entity.Property(e => e.SubNo).HasMaxLength(50);
        });

        modelBuilder.Entity<Teacher>(entity =>
        {
            entity.HasKey(e => e.Id).IsClustered(false);

            entity.HasIndex(e => e.AccountNo, "IX_Teacher_ano").IsClustered();

            entity.Property(e => e.ARC_ID)
                .HasMaxLength(50)
                .HasColumnName("ARC ID");
            entity.Property(e => e.AccountNo).HasMaxLength(50);
            entity.Property(e => e.Address).HasMaxLength(250);
            entity.Property(e => e.Birthday).HasColumnType("date");
            entity.Property(e => e.Education).HasMaxLength(50);
            entity.Property(e => e.Email).HasMaxLength(250);
            entity.Property(e => e.Experience).HasMaxLength(50);
            entity.Property(e => e.Job).HasMaxLength(250);
            entity.Property(e => e.Language).HasMaxLength(50);
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.Nationality).HasMaxLength(50);
            entity.Property(e => e.Password).HasMaxLength(50);
            entity.Property(e => e.PhoneNumber).HasMaxLength(50);
            entity.Property(e => e.SubNo).HasMaxLength(50);
            entity.Property(e => e.ValidateCode).HasMaxLength(250);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
