using System.ComponentModel.DataAnnotations;

namespace project.Models.ViewModel
{
    /// <summary>
    /// 聯絡我們
    /// </summary>
    public class vmContact
    {
        [Display(Name = "您的姓名")]
        [Required(ErrorMessage = "姓名不可空白")]
        public string ContactorName { get; set; } = "";
        [Display(Name = "電子信箱")]
        [Required(ErrorMessage = "電子信箱不可空白")]
        [EmailAddress(ErrorMessage = "電子信箱格式錯誤")]
        public string ContactEmail { get; set; } = "";
        [Display(Name = "訊息主旨")]
        [Required(ErrorMessage = "訊息主旨不可空白")]
        public string ContactSubject { get; set; } = "";
        [Display(Name = "訊息內文")]
        [Required(ErrorMessage = "訊息內文不可空白")]
        public string ContactMessage { get; set; } = "";
    }
}
