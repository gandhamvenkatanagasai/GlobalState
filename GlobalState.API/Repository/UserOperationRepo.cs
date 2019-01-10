using GlobalState.API.Models.UserEntities;
using GlobalState.API.Utilities;
using StackExchange.Redis;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

        public UserAccountDetail RegisterUserAccount(UserAccountDetail userAccountDetail)
        {
            using (new SqlConnection(Environment.GetEnvironmentVariable("SqlConnectionString")))
            {
                try
                {
                    SqlCommand command = new SqlCommand("USP_User_InsertNewUser");
                    command.Parameters.AddWithValue("@UserName", userAccountDetail.UserName);
                    command.Parameters.AddWithValue("@Password", userAccountDetail.UserName);
                    command.Parameters.AddWithValue("@EmailId", userAccountDetail.UserName);
                    command.ExecuteScalar();
                    return new UserAccountDetail();


                    //DynamicParameters parameters = new DynamicParameters();
                    //parameters.Add("@UserName", userAccountDetail.UserName);
                    //parameters.Add("@Password", userAccountDetail.Password);
                    //parameters.Add("@EmailId", userAccountDetail.EmailId);
                    //var result = await SqlMapper.QueryAsync<UserAccountDetail>((SqlConnection)con,
                    //  "uspUserRegistration", parameters, commandType: StoredProcedure);
                    //return result.FirstOrDefault();
                }
                catch (Exception ex)
                {
                    throw ex;
                }

            }
        }
    }   

}
