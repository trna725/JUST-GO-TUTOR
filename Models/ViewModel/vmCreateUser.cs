using System.ComponentModel.DataAnnotations;


    public class vmCreateUser
    {
        [Display(Name = "是否已驗證")]
        public bool IsValid { get; set; }
        [Display(Name = "登入帳號")]
        [Required(ErrorMessage = "登入帳號不可空白!!")]
        public string? UserNo { get; set; }
        [Display(Name = "登入姓名")]
        [Required(ErrorMessage = "登入姓名不可空白!!")]
        public string? UserName { get; set; }
        [Display(Name = "密碼")]
        [DataType(DataType.Password)]
        public string? Password { get; set; }
        [Display(Name = "角色代號")]
        [Required(ErrorMessage ="欄位不可空白!!!")]
        public string? RoleNo { get; set; }
        // [Display(Name = "角色名稱")]
        // public string? RoleName { get; set; }
        
        /// <summary>
        /// 等同於GenderCode
        /// </summary>
        [Display(Name = "性別")]
        public string? GenderName { get; set; }
        [Display(Name = "國籍")]
        public string? CountryNo { get; set; }   
        [Display(Name = "星星評論數量")]
        public string? ReviewStar { get; set; }
        [Display(Name = "出生日期")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy/MM/dd}")]
        public DateTime? Birthday { get; set; }
   
        [Display(Name = "電子信箱")]
        [EmailAddress(ErrorMessage = "電子信箱格式不正確!!")]
        [Required(ErrorMessage ="欄位不可空白!!!")]
        public string? ContactEmail { get; set; }
        [Display(Name = "連絡電話")]
        public string? ContactTel { get; set; }
        [Display(Name = "通訊地址")]
        public string? ContactAddress { get; set; }   
        [Display(Name = "備註")]
        public string? Remark { get; set; }
        
    }
