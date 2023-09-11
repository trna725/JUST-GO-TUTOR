using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Product
{
    public int Id { get; set; }

    public string? ProductNo { get; set; }

    public string? Product1 { get; set; }

    public string? Abbr { get; set; }

    public string? Type { get; set; }

    public string? Spec { get; set; }

    public decimal? Unit_Price { get; set; }

    public decimal? Sale_Price { get; set; }

    public int? Stock { get; set; }
}
