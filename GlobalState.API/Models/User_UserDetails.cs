using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class User_UserDetails : Common
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public int AddressId { get; set; }
        public string Mobile { get; set; }
        public string OtherContact { get; set; }
        public string SSN { get; set; }
        public int RoleId { get; set; }
    }
}
