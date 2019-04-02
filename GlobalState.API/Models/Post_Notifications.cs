using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class Post_Notifications : Common
    {
        public int NotificationId { get; set; }
        public int TypeId { get; set; }
        public string Header { get; set; }
        public int DescriptionId { get; set; }
        public int AddressId { get; set; }
        public int MaxDaysToLive { get; set; }
        public DateTime? TerminationDate { get; set; }
    }
}
