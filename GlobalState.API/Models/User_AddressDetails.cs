using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class User_AddressDetails : Common
    {
        public int AddressId { get; set; }
        public int MaxDaysToLive { get; set; }
        public DateTime? TerminationDate { get; set; }
    }
}
