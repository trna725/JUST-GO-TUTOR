﻿using System.ComponentModel.DataAnnotations;


    public class vmLogin
    {
        [Display(Name = "帳號")]
        [Required(ErrorMessage = "帳號不可空白")]
        public string AccountNo { get; set; } = "";
        [Display(Name = "密碼")]
        [Required(ErrorMessage = "密碼不可空白")]
        [DataType(DataType.Password)]
        public string Password { get; set; } = ""; 
    }

