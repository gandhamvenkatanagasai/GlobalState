using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class Master_CountryNameDetails :Common
    {
        public int CountryId { get; set; }
        public string CountryName { get; set; }
    }
}
