using System;
using System.Collections.Generic;

namespace JUSTGOTUTOR.Models;

public partial class CourseStatus
{
    public int Id { get; set; }

    public string? StatusNo { get; set; }

    public string? StatusName { get; set; }

    public string? Remark { get; set; }
}
