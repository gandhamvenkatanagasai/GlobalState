using Dapper;
using GlobalState.API.Models;
using GlobalState.API.Models.UserEntities;
using GlobalState.API.Utilities;
using Newtonsoft.Json;
using StackExchange.Redis;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace GlobalState.API.Repository
{
    public class UserOperationRepo : IUserOperationRepo
    {
        //Redis Helper Classes
        private static readonly RedisHelper RedisConnection = new RedisHelper();
        //Use in each method when doing the Redis Operation
        private static readonly IDatabase _redisExtension = RedisConnection.GetConnection();

        static IDbConnection db = new SqlConnection(Environment.GetEnvironmentVariable("SqlConnectionString"));

        public string GetVersion()
        {
            return Environment.GetEnvironmentVariable("CurrentVersion");
        }
        public async Task<IEnumerable<UserAccountDetail>> ManageUserAccount(UserAccountDetail userAccountDetail)
        {
          
                try
                {
                    db.Open();                
                    var parameter = new DynamicParameters();
                    parameter.Add("@Id", userAccountDetail.LId);
                    parameter.Add("@action", userAccountDetail.action);
                    parameter.Add("@UserName", userAccountDetail.UserName);
                    parameter.Add("@EmailId", userAccountDetail.EmailId);
                    parameter.Add("@Password", userAccountDetail.Password);
                    return (await db.QueryAsync<UserAccountDetail>("USP_UserAccount", parameter, commandType: CommandType.StoredProcedure)).AsList();
                //con.Open();
                //SqlCommand command = new SqlCommand("USP_UserAccount", con);
                //command.CommandType = System.Data.CommandType.StoredProcedure;
                //command.Parameters.AddWithValue("@action", userAccountDetail.action);
                //command.Parameters.AddWithValue("@UserName", userAccountDetail.UserName);
                //command.Parameters.AddWithValue("@Password", userAccountDetail.Password);
                //command.Parameters.AddWithValue("@EmailId", userAccountDetail.EmailId);
                //command.ExecuteScalar();
                //return new UserAccountDetail();

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
                finally
                {
                db.Close();
                }   
        }

        public async Task<IEnumerable<MainCategoryDTO>> ManageMainCategory(MainCategoryDTO MData)
        {
            try
            {
                db.Open();
                IEnumerable<MainCategoryDTO> list;              
                var parameter = new DynamicParameters();
                parameter.Add("@Id", MData.Id);
                parameter.Add("@action", MData.action);
                parameter.Add("@Name", MData.Name);
                parameter.Add("@ImagePath", MData.ImagePath);
                parameter.Add("@IsActive", MData.IsActive);
                parameter.Add("@CreatedBy", MData.CreatedBy);
                parameter.Add("@UpdatedBy", MData.UpdatedBy);             
                return (await db.QueryAsync<MainCategoryDTO>("Sp_manageMainCategory", parameter, commandType: CommandType.StoredProcedure)).AsList();
            }
            catch (Exception ex)
            {
                db.Close();
                throw ex;
            }
            finally
            {
                db.Close();
            }
        }

        public async Task<IEnumerable<CategoryDTO>> ManageCategory(CategoryDTO data)
        {
            try
            {
                db.Open();      
                var parameter = new DynamicParameters();
                parameter.Add("@Id", data.Id);
                parameter.Add("@action", data.action);
                parameter.Add("@MID", data.MID);
                parameter.Add("@Name", data.Name);
                parameter.Add("@ImagePath", data.ImagePath);
                parameter.Add("@IsActive", data.IsActive);
                parameter.Add("@CreatedBy", data.CreatedBy);
                parameter.Add("@UpdatedBy", data.UpdatedBy);
                return (await db.QueryAsync<CategoryDTO>("Sp_manageCategory", parameter, commandType: CommandType.StoredProcedure)).AsList();
            }
            catch (Exception ex)
            {
                db.Close();
                throw ex;
            }
            finally
            {
                db.Close();
            }
        }
    }   

}
