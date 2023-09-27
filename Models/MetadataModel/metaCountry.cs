using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;

namespace JUSTGOTUTOR.Models
{
    [ModelMetadataType(typeof(z_metaCountry))]
    public partial class Country
    {
        
    }
}

public class z_metaCountry
{
    [Key]
    public int Id { get; set; }
    [Display(Name ="國家代號")]
    [Required(ErrorMessage ="國家代號不可空白!!!")]
    public string? CountryNo { get; set; }
    [Display(Name ="國家名稱")]
    public string? CountryName { get; set; }
    [Display(Name ="備註")]
    public string? Remark { get; set; }
}