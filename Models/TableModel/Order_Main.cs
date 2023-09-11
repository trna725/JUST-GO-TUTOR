using System;
using System.Collections.Generic;

namespace project.Models;

public partial class Order_Main
{
    public int Id { get; set; }

    public string? OrderNo { get; set; }

    public DateTime? Date { get; set; }

    public string? CustomerNo { get; set; }

    public string? Payment { get; set; }

    public string? Shipment { get; set; }

    public string? Address { get; set; }

    public string? Currency { get; set; }

    public decimal? Rate { get; set; }

    public decimal? Amount { get; set; }
}
