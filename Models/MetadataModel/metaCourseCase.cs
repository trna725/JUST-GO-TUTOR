using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace JUSTGOTUTOR.Models
{
    [ModelMetadataType(typeof(z_metaCourseCase))]
    public partial class CourseCase
    {
        [NotMapped]
        [Display(Name = "09:00")]
        public bool IsTime1 { get; set; } = true;
        [NotMapped]
        [Display(Name = "10:00")]
        public bool IsTime2 { get; set; } = true;
        [NotMapped]
        [Display(Name = "11:00")]
        public bool IsTime3 { get; set; } = true;
        [NotMapped]
        [Display(Name = "13:00")]
        public bool IsTime4 { get; set; } = true;
        [NotMapped]
        [Display(Name = "14:00")]
        public bool IsTime5 { get; set; } = true;
        [NotMapped]
        [Display(Name = "15:00")]
        public bool IsTime6 { get; set; } = true;
        [NotMapped]
        [Display(Name = "16:00")]
        public bool IsTime7 { get; set; } = true;
        [NotMapped]
        [Display(Name = "17:00")]
        public bool IsTime8 { get; set; } = true;
        [NotMapped]
        [Display(Name = "18:00")]
        public bool IsTime9 { get; set; } = true;
        [NotMapped]
        [Display(Name = "19:00")]
        public bool IsTime10 { get; set; } = true;
        [NotMapped]
        [Display(Name = "20:00")]
        public bool IsTime11 { get; set; } = true;
        [NotMapped]
        [Display(Name = "Mon")]
        public bool IsWeek1 { get; set; } = true;
        [NotMapped]
        [Display(Name = "Tue")]
        public bool IsWeek2 { get; set; } = true;
        [NotMapped]
        [Display(Name = "Wed")]
        public bool IsWeek3 { get; set; } = true;
        [NotMapped]
        [Display(Name = "Thur")]
        public bool IsWeek4 { get; set; } = true;
        [NotMapped]
        [Display(Name = "Fri")]
        public bool IsWeek5 { get; set; } = true;
        [NotMapped]
        [Display(Name = "Sat")]
        public bool IsWeek6 { get; set; } = true;
        [NotMapped]
        [Display(Name = "Sun")]
        public bool IsWeek7 { get; set; } = true;
        [NotMapped]
        [Display(Name = "課程備註")]
        public string CourseMemo { get; set; } = "";
            

    }
}

public class z_metaCourseCase
{
    [Key]
    public int Id { get; set; }
    [Display(Name ="案件狀態代號")]
    public string? StatusCode { get; set; }
    [DataType(DataType.Date, ErrorMessage="Date only")]
    [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
    [Display(Name ="案件申請日期")]    
    public DateTime? CaseDate { get; set; }
    [Display(Name ="案件確認時間")]    
    public DateTime? ConfirmTime { get; set; }
    [Display(Name ="案件申請時間")]   
    public string? CaseTime { get; set; }
    [Display(Name ="學生代號")]  
    [Required(ErrorMessage ="欄位不可空白!!!")]
    public string? StudentNo { get; set; }
    [Display(Name ="學生姓名")] 
    public string? StudentName { get; set; }
    [Display(Name ="老師代號")]  
    [Required(ErrorMessage ="欄位不可空白!!!")]
    public string? TeacherNo { get; set; }
    [Display(Name ="老師姓名")] 
    public string? TeacherName { get; set; }
    [Display(Name ="課程代號")]  
    [Required(ErrorMessage ="欄位不可空白!!!")]
    public string? CourseNo { get; set; }
    [Display(Name ="課程名稱")] 
    public string? CourseName { get; set; }
    [Display(Name ="選擇時段")] 
    public string? TimeSection { get; set; }
    [Display(Name ="選擇星期")] 
    public string? WeekSection { get; set; }
    [Display(Name ="使用者MEMO")] 
    public string? UserMemo { get; set; }
    [Display(Name ="備註")] 
    public string? Remark { get; set; }
}