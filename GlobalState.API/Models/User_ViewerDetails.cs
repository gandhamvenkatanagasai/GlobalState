using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class User_ViewerDetails 
    {
        public int ViewerId { get; set; }
        public int UserId { get; set; }
        public int AddId { get; set; }
        public string IpAddress { get; set; }
        public DateTime? ViewedOn { get; set; }
        public int Count { get; set; }
    }
}
