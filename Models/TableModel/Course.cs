using System;
using System.Collections.Generic;

namespace JUSTGOTUTOR.Models;

public partial class Course
{
    public int Id { get; set; }

    public string? CategoryNo { get; set; }

    public string? CourseNo { get; set; }

    public string? CourseName { get; set; }

    public string? StatusCode { get; set; }

    public DateTime? RegisterStartDate { get; set; }

    public DateTime? RegisterEndDate { get; set; }

    public DateTime OpenStartDate { get; set; }

    public DateTime OpenEndDate { get; set; }

    public string? TeacherNo { get; set; }

    public int CourseAmount { get; set; }

    public int? TotalHours { get; set; }

    public string? CourseCode { get; set; }

    public string? CourseOutline { get; set; }

    public string? Remark { get; set; }
}
