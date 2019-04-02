using GlobalState.API.Models;
using GlobalState.API.Models.UserEntities;
using GlobalState.API.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Services
{
    public class UserOperationServices : IUserOperationServices
    {
        private readonly IUserOperationRepo _operationRepo;

        public UserOperationServices(IUserOperationRepo operationRepo)
        {
            _operationRepo = operationRepo;
        }
        public string GetVersion()
        {
            return _operationRepo.GetVersion();
        }
        public async Task<IEnumerable<UserAccountDetail>> ManageUserAccount(UserAccountDetail userAccountDetail)
        {
            return await _operationRepo.ManageUserAccount(userAccountDetail);
        }
        public async Task<IEnumerable<MainCategoryDTO>> ManageMainCategory(MainCategoryDTO data)
        {
            return await _operationRepo.ManageMainCategory(data);
        }
        public async Task<IEnumerable<CategoryDTO>> ManageCategory(CategoryDTO data)
        {
            return await _operationRepo.ManageCategory(data);
        }

        public async Task<IEnumerable<Master_SettingTypes>> ManageSettingTypes(Master_SettingTypes data)
        {
            return await _operationRepo.ManageMaster_SettingTypes(data);
        }
        public async Task<IEnumerable<User_UserDetails>> ManageUserDetails(User_UserDetails data)
        {
            return await _operationRepo.ManageUserDetails(data);
        }
        public async Task<IEnumerable<Master_NotificationTypeDetails>> ManageNotificationTypeDetails(Master_NotificationTypeDetails data)
        {
            return await _operationRepo.ManageNotificationTypeDetails(data);
        }
        public async Task<IEnumerable<Master_CityNameDetails>> ManageCity(Master_CityNameDetails data)
        {
            return await _operationRepo.ManageCity(data);
        }
    }
}
