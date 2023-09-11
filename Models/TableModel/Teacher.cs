using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Teacher
{
    public int Id { get; set; }

    public bool IsValid { get; set; }

    public string? Name { get; set; }

    public string? AccountNo { get; set; }

    public string? Password { get; set; }

    public string? PhoneNumber { get; set; }

    public string? Email { get; set; }

    public DateTime? Birthday { get; set; }

    public string? Job { get; set; }

    public string? Address { get; set; }

    public string? Photo { get; set; }

    public string? SubNo { get; set; }

    public string? Education { get; set; }

    public string? ARC_ID { get; set; }

    public string? Nationality { get; set; }

    public string? Language { get; set; }

    public string? Experience { get; set; }

    public string? ValidateCode { get; set; }
}
