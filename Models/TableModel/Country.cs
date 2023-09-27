using System;
using System.Collections.Generic;

namespace JUSTGOTUTOR.Models;

public partial class Country
{
    public int Id { get; set; }

    public string? CountryNo { get; set; }

    public string? CountryName { get; set; }

    public string? Remark { get; set; }
}
