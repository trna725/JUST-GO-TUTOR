using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Course_Detail
{
    public int Id { get; set; }

    public string? CourseNo { get; set; }

    public string? Course { get; set; }

    public DateTime? Date { get; set; }

    public TimeSpan? Time { get; set; }

    public string? TeacherNo { get; set; }

    public decimal? Hour { get; set; }
}
