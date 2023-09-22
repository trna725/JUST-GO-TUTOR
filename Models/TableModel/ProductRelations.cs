using System;
using System.Collections.Generic;

namespace JUSTGOTUTOR.Models
{
    public partial class ProductRelations
    {
        public int Id { get; set; }

        public string? ProdNo { get; set; }

        public string? CategoryNo { get; set; }

        public string? Remark { get; set; }
    }
}