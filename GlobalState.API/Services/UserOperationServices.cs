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
        public UserAccountDetail RegisterUserAccount(UserAccountDetail userAccountDetail)
        {
            return _operationRepo.RegisterUserAccount(userAccountDetail);
        }
    }
}
