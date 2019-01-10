using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
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
        public UserAccountDetail RegisterUserAccount([FromBody]UserAccountDetail userAccountDetail)
        {
            return  _operationServices.RegisterUserAccount(userAccountDetail);
        }
        public void SendVerificationLinkEmail()
        {

        }

    }
}