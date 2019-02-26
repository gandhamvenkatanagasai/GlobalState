using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models.UserEntities
{ 
    public class UserAccountDetail : Common
    {       
        public int? LId { get; set; }
        public int RId { get; set; }
        public int RoleId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public bool IsEmailVerified { get; set; }
        public bool IsMobileVerified { get; set; }
        public string EmailId { get; set; }

        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public int AddressId { get; set; }
        public string Mobile { get; set; }
        public string OtherContact { get; set; }
        public string SSN { get; set; }
            

    }
}
