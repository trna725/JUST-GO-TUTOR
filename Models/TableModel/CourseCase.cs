using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace JUSTGOTUTOR.Models;

public class CourseCase
{
    [Key]
    public int Id { get; set; }
    public string? StatusCode { get; set; }
    public DateTime? CaseDate { get; set; }
    public DateTime? ConfirmTime { get; set; }
    public DateTime? CaseTime { get; set; }
    public string? StudentNo { get; set; }
    public string? StudentName { get; set; }
    public string? TeacherNo { get; set; }
    public string? TeacherName { get; set; }
    public string? CourseNo { get; set; }
    public string? CourseName { get; set; }
    public string? TimeSection { get; set; }
    public string? WeekSection { get; set; }
    public string? UserMemo { get; set; }
    public string? Remark { get; set; }
}