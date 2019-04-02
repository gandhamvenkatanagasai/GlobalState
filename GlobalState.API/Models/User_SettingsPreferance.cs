using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class User_SettingsPreferance : Common   
    {
        public int UserSettingId { get; set; }
        public int SettingId { get; set; }
        public int UserId { get; set; }
        public string Preference { get; set; }
    }
}
