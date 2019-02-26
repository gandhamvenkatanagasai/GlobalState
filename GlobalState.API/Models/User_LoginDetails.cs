using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class User_LoginDetails : Common
    {
        public int LId { get; set; }
        public int RId { get; set; }
        public int RoleId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public bool IsEmailVerified { get; set; }
        public bool IsMobileVerified { get; set; }
    }
}
