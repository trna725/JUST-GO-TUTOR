using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNetCore.Mvc;

namespace project.Models
{
    [ModelMetadataType(typeof(z_metaMember))]
    public partial class Member
    {
        [NotMapped]
        [Display(Name = "類別")]
        public string? CodeName { get; set; }
        [NotMapped]
        [Display(Name = "角色名稱")]
        public string? RoleName { get; set; }



    }
}

public class z_metaMember
{
    [Key]
    public int StudentNo { get; set; }
    [Display(Name = "合法")]
    public bool IsValid { get; set; }
    [Display(Name = "登入帳號")]
    [Required(ErrorMessage = "登入帳號不可空白!!")]
    public string? Account { get; set; }
    [Display(Name = "登入姓名")]
    [Required(ErrorMessage = "登入姓名不可空白!!")]
    public string? Name { get; set; }
    [Display(Name = "密碼")]
    [DataType(DataType.Password)]
    public string? Password { get; set; }

    [Display(Name = "出生日期")]
    [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy/MM/dd}")]
    public DateTime? Birthday { get; set; }

    [Display(Name = "電子信箱")]
    [EmailAddress(ErrorMessage = "電子信箱格式不正確!!")]
    public string? ContactEmail { get; set; }
    [Display(Name = "連絡電話")]
    public string? ContactTel { get; set; }
    [Display(Name = "通訊地址")]
    public string? ContactAddress { get; set; }
    [Display(Name = "驗證碼")]
    public string? ValidateCode { get; set; }
    [Display(Name = "通知Token")]
    public string? NotifyPassword { get; set; }
    [Display(Name = "備註")]
    public string? Remark { get; set; }
}
