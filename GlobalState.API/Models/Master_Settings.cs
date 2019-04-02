using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class Master_Settings : Common
    {
        public int SettingId { get; set; }
        public string SettingName { get; set; }
        public int SettingTypeId { get; set; }
    }
}
