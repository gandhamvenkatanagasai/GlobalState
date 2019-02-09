using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models.UserEntities
{
    public class UserAccountDetail
    {
        public int action { get; set; }
        public int? LId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string EmailId { get; set; }
    }
}
