using GlobalState.API.Models.UserEntities;
using GlobalState.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Services
{
    public interface IUserOperationServices
    {
        string GetVersion();
        Task<IEnumerable<UserAccountDetail>> ManageUserAccount(UserAccountDetail userAccountDetail);
        Task<IEnumerable<MainCategoryDTO>> ManageMainCategory(MainCategoryDTO data);
        Task<IEnumerable<CategoryDTO>> ManageCategory(CategoryDTO data);
    }
}
