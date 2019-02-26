using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class Master_MenuItems : Common
    {
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public int ParentId { get; set; }
        public bool IsApprovalRequired { get; set; }
    }
}
