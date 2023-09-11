using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Booking
{
    public int Id { get; set; }

    public string? BookNo { get; set; }

    public string? CoursesNo { get; set; }

    public DateTime? Date { get; set; }

    public TimeSpan? Time { get; set; }

    public string? TeacherNo { get; set; }

    public string? StudentNo { get; set; }

    public string? Loaction { get; set; }

    public string? Method { get; set; }
}
