using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Courses_Main
{
    public int Id { get; set; }

    public string? CourseNo { get; set; }

    public string? Course { get; set; }

    public string? Type { get; set; }

    public decimal? Amount { get; set; }

    public int? Count { get; set; }

    public decimal? TotalTime { get; set; }

    public string? SubNo { get; set; }
}
