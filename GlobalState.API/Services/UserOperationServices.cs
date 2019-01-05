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

    }
}
