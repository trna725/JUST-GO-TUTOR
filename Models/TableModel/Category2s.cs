using System;
using System.Collections.Generic;

namespace JUSTGOTUTOR.Models;

public partial class Category2s
{
    public int Id { get; set; }

    public bool IsEnabled { get; set; }

    public string? SortNo { get; set; }

    public string? ParentNo { get; set; }

    public string? CategoryNo { get; set; }

    public string? CategoryName { get; set; }

    public string? EnglishName { get; set; }

    public string? Remark { get; set; }
}
