using GlobalState.API.Models.UserEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Repository
{
    public interface IUserOperationRepo
    {
        string GetVersion();
        UserAccountDetail RegisterUserAccount(UserAccountDetail userAccountDetail);
    }
}
