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
        Task<IEnumerable<Master_SettingTypes>> ManageSettingTypes(Master_SettingTypes data);
        Task<IEnumerable<Master_NotificationTypeDetails>> ManageNotificationTypeDetails(Master_NotificationTypeDetails data);
        Task<IEnumerable<User_UserDetails>> ManageUserDetails(User_UserDetails data);
        Task<IEnumerable<Master_CityNameDetails>> ManageCity(Master_CityNameDetails data);
    }
}
