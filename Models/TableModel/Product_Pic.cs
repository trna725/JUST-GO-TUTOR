using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Product_Pic
{
    public int Id { get; set; }

    public string? ProductNo { get; set; }

    public string? Photo { get; set; }

    public string? Describe { get; set; }
}
