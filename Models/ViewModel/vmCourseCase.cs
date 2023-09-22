using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;


public class vmCourseCase
{
    [Display(Name = "09:00")]
    public bool IsTime1 { get; set; } = true;
    [Display(Name = "10:00")]
    public bool IsTime2 { get; set; } = true;
    [Display(Name = "11:00")]
    public bool IsTime3 { get; set; } = true;
    [Display(Name = "13:00")]
    public bool IsTime4 { get; set; } = true;
    [Display(Name = "14:00")]
    public bool IsTime5 { get; set; } = true;
    [Display(Name = "15:00")]
    public bool IsTime6 { get; set; } = true;
    [Display(Name = "16:00")]
    public bool IsTime7 { get; set; } = true;
    [Display(Name = "17:00")]
    public bool IsTime8 { get; set; } = true;
    [Display(Name = "18:00")]
    public bool IsTime9 { get; set; } = true;
    [Display(Name = "19:00")]
    public bool IsTime10 { get; set; } = true;
    [Display(Name = "20:00")]
    public bool IsTime11 { get; set; } = true;
    [Display(Name = "Mon")]
    public bool IsWeek1 { get; set; } = true;
    [Display(Name = "Tue")]
    public bool IsWeek2 { get; set; } = true;
    [Display(Name = "Wed")]
    public bool IsWeek3 { get; set; } = true;
    [Display(Name = "Thur")]
    public bool IsWeek4 { get; set; } = true;
    [Display(Name = "Fri")]
    public bool IsWeek5 { get; set; } = true;
    [Display(Name = "Sat")]
    public bool IsWeek6 { get; set; } = true;
    [Display(Name = "Sun")]
    public bool IsWeek7 { get; set; } = true;
    [Display(Name = "課程備註")]
    public string CourseMemo { get; set; } = "";
}