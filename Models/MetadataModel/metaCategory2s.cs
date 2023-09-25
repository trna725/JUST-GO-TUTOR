using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;

namespace JUSTGOTUTOR.Models
{
    [ModelMetadataType(typeof(z_metaCategory2s))]
    public partial class Category2s
    {
    
    }
}


public class z_metaCategory2s
{
    [Key]
    public int Id { get; set; }

    [Display(Name ="啟用")]
    public bool IsEnabled { get; set; } 
     [Display(Name ="排序編號")]
    public string? SortNo { get; set; }
    [Display(Name ="父類別代號")]
    public string? ParentNo { get; set; }
    [Display(Name ="類別代號")]
    public string? CategoryNo { get; set; }
    [Display(Name ="類別名稱")]
    public string? CategoryName { get; set; }
    [Display(Name ="英文名字")]
    public string? EnglishName { get; set; }
    [Display(Name ="註解")]
    public string? Remark { get; set; }
}

