using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNetCore.Mvc;

namespace JUSTGOTUTOR.Models
{
    [ModelMetadataType(typeof(z_metaUserCategorys))]
    public partial class UserCategorys
    {
        [NotMapped]
        [Display(Name ="使用者姓名")]
        public string? UserName  { get; set; }
        
        [NotMapped]
        [Display(Name = "國籍")]
        public string? CountryNo { get; set; }

        [NotMapped]
        [Display(Name = "星星評論數量")]
        public string? ReviewStar { get; set; }

        [NotMapped]
        [Display(Name = "電子郵件")]
        public string? ContactEmail { get; set; }

        [NotMapped]
        [Display(Name = "電話號碼")]
        public string? ContactPhone { get; set; }

        [NotMapped]
        [Display(Name = "分類名稱")]
        public string? CategoryName { get; set; }

        [NotMapped]
        [Display(Name = "英文名稱")]
        public string? EnglishName { get; set; }

        [NotMapped]
        [Display(Name = "父類別代號")]
        public string? ParentNo { get; set; } 

        [NotMapped]
        [Display(Name = "內容")]
        public string? ContentText { get; set; }
    }

    public class z_metaUserCategorys
    {
    [Key]
    public int Id { get; set; }
    [Display(Name ="使用者代號")]
    public string? UserNo { get; set; }
    [Display(Name ="分類代號")]
    public string? CategoryNo { get; set; }
    [Display(Name ="備註")]
    public string? Remark { get; set; }
        
    }
}