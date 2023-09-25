using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;

namespace JUSTGOTUTOR.Models
{     
    [ModelMetadataType(typeof(z_metaCourseStatus))]
    public partial class CourseStatus
    {
        
        
    }
}

public class z_metaCourseStatus
{
    [Key]
    public int Id { get; set; }

    [Display(Name ="狀態編號")]
    public string? StatusNo { get; set; }
    [Display(Name ="狀態名稱")]
    public string? StatusName { get; set; }
    [Display(Name ="註解")]
    public string? Remark { get; set; }

}