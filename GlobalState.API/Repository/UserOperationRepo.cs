using GlobalState.API.Utilities;
using StackExchange.Redis;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Repository
{
    public class UserOperationRepo : IUserOperationRepo
    {
        IDatabase cache = RedisConnectorHelper.Connection.GetDatabase();

        public string GetVersion()
        {
            return Environment.GetEnvironmentVariable("CurrentVersion");
        }

    }

    

}
