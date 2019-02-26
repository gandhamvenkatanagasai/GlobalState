using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class Master_StateNameDetails : Common
    {
        public int StateId { get; set; }
        public string StateName { get; set; }
        public int CountryId { get; set; }
    }
}
