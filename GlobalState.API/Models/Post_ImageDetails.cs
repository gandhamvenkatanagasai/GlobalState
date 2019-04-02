using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class Post_ImageDetails : Common
    {
        public int ImageId { get; set; }
        public int AddId { get; set; }
        public string Imagedata { get; set; }
        public string ImageName { get; set; }
    }
}
