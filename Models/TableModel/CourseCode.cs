using System;
using System.Collections.Generic;

namespace JUSTGOTUTOR.Models;

public partial class CourseCode
{
    public int Id { get; set; }

    public string? CodeNo { get; set; }

    public string? CodeName { get; set; }

    public string? Remark { get; set; }
}
