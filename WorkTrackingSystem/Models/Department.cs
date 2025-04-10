﻿using System;
using System.Collections.Generic;

namespace WorkTrackingSystem.Models;

public partial class Department
{
    public long Id { get; set; }

    public string Code { get; set; } = null!;

    public string? Name { get; set; }

    public string? Description { get; set; }

    public bool? IsDelete { get; set; }

    public bool? IsActive { get; set; }

    public DateTime? CreateDate { get; set; }

    public DateTime? UpdateDate { get; set; }

    public string? CreateBy { get; set; }

    public string? UpdateBy { get; set; }

    public virtual ICollection<Employee> Employees { get; set; } = new List<Employee>();
}
