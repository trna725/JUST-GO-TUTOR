using System.ComponentModel.DataAnnotations; 

namespace project.Models.ViewModel
{
    /// <summary>
    /// 忘記密碼 ViewModel 
    /// </summary>
    public class vmForget
    {
        //看是不是只要帳號
        [Display(Name ="帳號或電子信箱")]
        [Required(ErrorMessage ="不可空白")]
        public string Account { get; set; } = ""; 

    }
}
