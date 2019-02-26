using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class Post_AddDetails : Common
    {
        public int AddId { get; set; }
        public int ItemId { get; set; }
        public string Header { get; set; }
        public int DescriptionId { get; set; }
        public int AddressId { get; set; }
        public bool IsApproved { get; set; }
        public int MaxDaysToLive { get; set; }
        public bool IsCommunitySpecific { get; set; }
        public DateTime? TerminationDate { get; set; }
    }
}
