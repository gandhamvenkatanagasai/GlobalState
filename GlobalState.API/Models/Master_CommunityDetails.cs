using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class Master_CommunityDetails :Common
    {
        public int CommunityId { get; set; }
        public string CommunityName { get; set; }
        public int CountryId { get; set; }
        public int StateId { get; set; }
    }
}
