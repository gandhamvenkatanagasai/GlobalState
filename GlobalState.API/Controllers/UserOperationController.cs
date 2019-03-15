using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GlobalState.API.Models;
using GlobalState.API.Models.UserEntities;
using GlobalState.API.Services;
using Microsoft.AspNetCore.Mvc;

namespace GlobalState.API.Controllers
{
    [Route("api/[controller]/[action]")]
    public class UserOperationController : Controller
    {
        private readonly IUserOperationServices _operationServices;

        public UserOperationController(IUserOperationServices operationServices)
        {
            _operationServices = operationServices;
        }

        public string Index()
        {
            var value = _operationServices.GetVersion();
            return value;
        }

        [HttpPost]
        public async Task<IEnumerable<UserAccountDetail>> RegisterUserAccount([FromBody]UserAccountDetail userAccountDetail)
        {
            return await _operationServices.ManageUserAccount(userAccountDetail);
        }
        [HttpPost]
        public async Task<IEnumerable<UserAccountDetail>> LoginUserAccount([FromBody]UserAccountDetail userAccountDetail)
        {
            return await _operationServices.ManageUserAccount(userAccountDetail);
        }

        [HttpPost]
        public async Task<IEnumerable<MainCategoryDTO>> ManageMainCategory([FromBody]MainCategoryDTO data)
        {
            return await _operationServices.ManageMainCategory(data);
        }
        [HttpPost]
        public async Task<IEnumerable<CategoryDTO>> ManageCategory([FromBody]CategoryDTO data)
        {
            return await _operationServices.ManageCategory(data);
        }
        [HttpPost]
        public async Task<IEnumerable<Master_SettingTypes>> ManageSettingTypes([FromBody]Master_SettingTypes data)
        {
            return await _operationServices.ManageSettingTypes(data);
        }
        [HttpPost]
        public async Task<IEnumerable<Master_NotificationTypeDetails>> ManageNotificationTypeDetails([FromBody]Master_NotificationTypeDetails data)
        {
            return await _operationServices.ManageNotificationTypeDetails(data);
        }

        [HttpPost]
        public async Task<IEnumerable<User_UserDetails>> ManageUserDetails([FromBody]User_UserDetails data)
        {
            return await _operationServices.ManageUserDetails(data);
        }





        public void SendVerificationLinkEmail()
        {

        }

    }
}