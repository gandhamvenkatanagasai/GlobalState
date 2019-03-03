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
        public async Task<IEnumerable<Master_SettingTypes>> ManageMaster_SettingTypes([FromBody]Master_SettingTypes data)
        {
            return await _operationServices.ManageMaster_SettingTypes(data);
        }



        public void SendVerificationLinkEmail()
        {

        }

    }
}