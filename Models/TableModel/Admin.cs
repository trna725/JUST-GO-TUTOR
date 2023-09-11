using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Admin
{
    public int Id { get; set; }

    public bool IsValid { get; set; }

    public string? Name { get; set; }

    public string? AccountNo { get; set; }

    public string? Password { get; set; }

    public string? PhoneNumber { get; set; }

    public string? Email { get; set; }

    public string? Address { get; set; }

    public string? ValidateCode { get; set; }
}
