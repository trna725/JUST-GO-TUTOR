﻿using System;
using System.Collections.Generic;

namespace JUSTGOTUTOR.Models
{
    public partial class Messages
    {
        public int Id { get; set; }

        public bool IsRead { get; set; }

        public string? CodeNo { get; set; }

        public string? SenderNo { get; set; }

        public string? ReceiverNo { get; set; }

        public DateTime SendDate { get; set; }

        public DateTime SendTime { get; set; }

        public string? HeaderText { get; set; }

        public string? MessageText { get; set; }

        public string? Remark { get; set; }
    }
}