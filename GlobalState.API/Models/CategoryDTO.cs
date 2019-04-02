using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Models
{
    public class CategoryDTO : Common
    {
        public int Id { get; set; }
        public int MID { get; set; }
        public string Name { get; set; } = string.Empty;
        public string ImagePath { get; set; }
        public string MainCategoryName { get; set; }   
    }
}
