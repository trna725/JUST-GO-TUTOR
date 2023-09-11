using System.ComponentModel.DataAnnotations;

namespace project.Models.ViewModel
{
    public class vmRegister
    {
        [Display(Name = "註冊帳號")]
        [Required(ErrorMessage ="註冊帳號不可空白")]
        public string AccountNo { get; set; } = "";


        [Display(Name = "註冊姓名")]
        [Required(ErrorMessage = "註冊姓名不可空白")]
        public string Name { get; set; } = "";

        [Display(Name ="註冊密碼")]
        [Required(ErrorMessage ="註冊密碼不可空白")]
        [DataType(DataType.Password)]
        public string Password { get; set; } = "";

        [Display(Name = "確認密碼")]
        [Required(ErrorMessage = "確認密碼不可空白")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage ="與註冊密碼不相符!!!")]
        public string ConfirmPassword { get; set; } = "";

        [Display(Name = "電子信箱")]
        [Required(ErrorMessage = "電子信箱不可空白")]
        //[DataType(DataType.EmailAddress)]
        [EmailAddress(ErrorMessage ="電子信箱格式錯誤!!!")]
        public string Email { get; set; } = "";

        [Display(Name = "電話號碼")]
        [Required(ErrorMessage = "電話號碼不可空白")]
        public string PhoneNumber { get; set; } = "";

        [Display(Name = "聯絡地址")]
        [Required(ErrorMessage = "聯絡地址不可空白")]
        public string Address { get; set; } = "";

        //[Display(Name = "生日")]
        //[Required(ErrorMessage = "生日不可空白")]
        //[DataType(DataType.DateTime)]
        //public string Birthday { get; set; } = "";

        //[Display(Name = "職業")]
        //public string Job { get; set; } = "";
    }
}
