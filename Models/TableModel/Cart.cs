using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Cart
{
    public int Id { get; set; }

    public string CartNo { get; set; } = null!;

    public string? ProductNo { get; set; }

    public int? Number { get; set; }

    public decimal? Price { get; set; }

    public decimal? Amount { get; set; }

    public string? CustomerNo { get; set; }
}
