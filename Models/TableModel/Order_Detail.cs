using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Order_Detail
{
    public int Id { get; set; }

    public string? OrderNo { get; set; }

    public string? ProductNo { get; set; }

    public int? Number { get; set; }

    public decimal? Price { get; set; }
}
