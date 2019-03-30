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
        private string connectionstring = Environment.GetEnvironmentVariable("SqlConnectionString");

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

                List<MainCategoryDTO> list = new List<MainCategoryDTO>();

                using (SqlConnection con = new SqlConnection(connectionstring))
                {
                    SqlCommand cmd = new SqlCommand("Sp_manageMainCategory", con);
                    cmd.Parameters.AddWithValue("Name", MData.Name);
                    cmd.Parameters.AddWithValue("ImagePath", MData.ImagePath);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader rdr = await cmd.ExecuteReaderAsync();

                    while (await rdr.ReadAsync())
                    {
                        MainCategoryDTO mainCategory = new MainCategoryDTO();
                        mainCategory.Id = Convert.ToInt32(rdr["Id"]);
                        mainCategory.Name = rdr["Name"].ToString();
                        mainCategory.ImagePath = rdr["ImagePath"].ToString();
                        mainCategory.message = rdr["message"].ToString();
                        mainCategory.res = Convert.ToInt32(rdr["res"]);
                        list.Add(mainCategory);
                    }
                    con.Close();
                }
                return list;
                //db.Open();
                //IEnumerable<MainCategoryDTO> list;              
                //var parameter = new DynamicParameters();
                //parameter.Add("@Id", MData.Id);
                //parameter.Add("@action", MData.action);
                //parameter.Add("@Name", MData.Name);
                //parameter.Add("@ImagePath", MData.ImagePath);
                //parameter.Add("@IsActive", MData.IsActive);
                //parameter.Add("@CreatedBy", MData.CreatedBy);
                //parameter.Add("@UpdatedBy", MData.UpdatedBy);             
                //return (await db.QueryAsync<MainCategoryDTO>("Sp_manageMainCategory", parameter, commandType: CommandType.StoredProcedure)).AsList();
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
                List<CategoryDTO> list = new List<CategoryDTO>();

                using (SqlConnection con = new SqlConnection(connectionstring))
                {
                    SqlCommand cmd = new SqlCommand("Sp_manageCategory", con);
                    cmd.Parameters.AddWithValue("MID", data.MID);
                    cmd.Parameters.AddWithValue("Name", data.Name);
                    cmd.Parameters.AddWithValue("ImagePath", data.ImagePath);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader rdr = await cmd.ExecuteReaderAsync();

                    while (await rdr.ReadAsync())
                    {
                        CategoryDTO category = new CategoryDTO();
                        category.Id = Convert.ToInt32(rdr["Id"]);
                        category.MID = Convert.ToInt32(rdr["MID"]);
                        category.MainCategoryName = rdr["MainCategoryName"].ToString();
                        category.Name = rdr["Name"].ToString();
                        category.ImagePath = rdr["ImagePath"].ToString();
                        category.message = rdr["message"].ToString();
                        category.res = Convert.ToInt32(rdr["res"]);
                        list.Add(category);
                    }
                    con.Close();
                }
                return list;
                //db.Open();      
                //var parameter = new DynamicParameters();
                //parameter.Add("@Id", data.Id);
                //parameter.Add("@action", data.action);
                //parameter.Add("@MID", data.MID);
                //parameter.Add("@Name", data.Name);
                //parameter.Add("@ImagePath", data.ImagePath);
                //parameter.Add("@IsActive", data.IsActive);
                //parameter.Add("@CreatedBy", data.CreatedBy);
                //parameter.Add("@UpdatedBy", data.UpdatedBy);
                //return (await db.QueryAsync<CategoryDTO>("Sp_manageCategory", parameter, commandType: CommandType.StoredProcedure)).AsList();
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

        public async Task<IEnumerable<Master_SettingTypes>> ManageMaster_SettingTypes(Master_SettingTypes data)
        {
            try
            {
                List<Master_SettingTypes> list = new List<Master_SettingTypes>();

                using (SqlConnection con = new SqlConnection(connectionstring))
                {
                    SqlCommand cmd = new SqlCommand("Sp_manageMaster_SettingTypes", con);
                    cmd.Parameters.AddWithValue("SettingTypeId", data.SettingTypeId);
                    cmd.Parameters.AddWithValue("SettingTypeName", data.SettingTypeName);
                    cmd.Parameters.AddWithValue("Active", data.IsActive);
                    cmd.Parameters.AddWithValue("CreatedBy", data.CreatedBy);
                    cmd.Parameters.AddWithValue("UpdatedBy", data.UpdatedBy);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader rdr = await cmd.ExecuteReaderAsync();

                    while (await rdr.ReadAsync())
                    {
                        Master_SettingTypes listData = new Master_SettingTypes();
                        listData.SettingTypeId = Convert.ToInt32(rdr["SettingTypeId"]);
                        listData.SettingTypeName = rdr["SettingTypeName"].ToString();
                        listData.CreatedBy = rdr["CreatedBy"].ToString();
                        listData.UpdatedBy = rdr["UpdatedBy"].ToString();
                        listData.IsActive = Convert.ToBoolean(rdr["Active"]);
                        listData.message = rdr["message"].ToString();
                        listData.res = Convert.ToInt32(rdr["res"]);
                        list.Add(listData);
                    }
                    con.Close();
                }
                return list;
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


        public async Task<IEnumerable<Master_NotificationTypeDetails>> ManageNotificationTypeDetails(Master_NotificationTypeDetails data)
        {
            try
            {
                List<Master_NotificationTypeDetails> list = new List<Master_NotificationTypeDetails>();

                using (SqlConnection con = new SqlConnection(connectionstring))
                {
                    SqlCommand cmd = new SqlCommand("Sp_manageMaster_SettingTypes", con);
                    cmd.Parameters.AddWithValue("TypeId", data.TypeId);
                    cmd.Parameters.AddWithValue("Type", data.Type);
                    cmd.Parameters.AddWithValue("Active", data.IsActive);
                    cmd.Parameters.AddWithValue("CreatedBy", data.CreatedBy);
                    cmd.Parameters.AddWithValue("UpdatedBy", data.UpdatedBy);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader rdr = await cmd.ExecuteReaderAsync();

                    while (await rdr.ReadAsync())
                    {
                        Master_NotificationTypeDetails listData = new Master_NotificationTypeDetails();
                        listData.TypeId = Convert.ToInt32(rdr["TypeId"]);
                        listData.Type = rdr["Type"].ToString();
                        listData.CreatedBy = rdr["CreatedBy"].ToString();
                        listData.UpdatedBy = rdr["UpdatedBy"].ToString();
                        listData.IsActive = Convert.ToBoolean(rdr["Active"]);
                        listData.message = rdr["message"].ToString();
                        listData.res = Convert.ToInt32(rdr["res"]);
                        list.Add(listData);
                    }
                    con.Close();
                }
                return list;
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

        public async Task<IEnumerable<User_UserDetails>> ManageUserDetails(User_UserDetails data)
        {
            try
            {
                List<User_UserDetails> list = new List<User_UserDetails>();

                using (SqlConnection con = new SqlConnection(connectionstring))
                {
                    SqlCommand cmd = new SqlCommand("USP_UserAccount", con);
                    cmd.Parameters.AddWithValue("action", data.action);
                    cmd.Parameters.AddWithValue("Username", data.Username);
                    cmd.Parameters.AddWithValue("Password", data.Password);
                    cmd.Parameters.AddWithValue("FirstName", data.FirstName);
                    cmd.Parameters.AddWithValue("MiddleName", data.MiddleName);
                    cmd.Parameters.AddWithValue("LastName", data.LastName);
                    cmd.Parameters.AddWithValue("AddressId", data.AddressId);
                    cmd.Parameters.AddWithValue("OtherContact", data.OtherContact);
                    cmd.Parameters.AddWithValue("SSN", data.SSN);
                    cmd.Parameters.AddWithValue("Mobile", data.Mobile);
                    cmd.Parameters.AddWithValue("RoleId", data.RoleId);
                    cmd.Parameters.AddWithValue("Active", data.IsActive);
                    cmd.Parameters.AddWithValue("CreatedBy", data.CreatedBy);
                    cmd.Parameters.AddWithValue("UpdatedBy", data.UpdatedBy);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader rdr = await cmd.ExecuteReaderAsync();

                    while (await rdr.ReadAsync())
                    {
                        User_UserDetails listData = new User_UserDetails();
                        listData.AddressId = Convert.ToInt32(rdr["AddressId"]);
                        listData.FirstName = rdr["FirstName"].ToString();
                        listData.MiddleName = rdr["MiddleName"].ToString();
                        listData.LastName = rdr["LastName"].ToString();
                        listData.Mobile = rdr["Mobile"].ToString();
                        listData.RoleId = Convert.ToInt32(rdr["RoleId"]);
                        listData.status = Convert.ToInt32(rdr["status"]);
                        listData.LId = Convert.ToInt32(rdr["LId"]);
                        listData.UpdatedBy = rdr["UpdatedBy"].ToString();
                        listData.IsActive = Convert.ToBoolean(rdr["Active"]);
                        listData.message = rdr["message"].ToString();
                        listData.res = Convert.ToInt32(rdr["res"]);
                        list.Add(listData);
                    }
                    con.Close();
                }
                return list;
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






        public async Task<IEnumerable<Master_CityNameDetails>> ManageCity(Master_CityNameDetails data)
        {
            try
            {
                List<Master_CityNameDetails> list = new List<Master_CityNameDetails>();

                using (SqlConnection con = new SqlConnection(connectionstring))
                {
                    SqlCommand cmd = new SqlCommand("Sp_manageCityDetails", con);
                    cmd.Parameters.AddWithValue("CityId", data.CityId);
                    cmd.Parameters.AddWithValue("City", data.City);
                    cmd.Parameters.AddWithValue("Active", data.IsActive);
                    cmd.Parameters.AddWithValue("CreatedBy", data.CreatedBy);
                    cmd.Parameters.AddWithValue("UpdatedBy", data.UpdatedBy);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader rdr = await cmd.ExecuteReaderAsync();

                    while (await rdr.ReadAsync())
                    {
                        Master_CityNameDetails listData = new Master_CityNameDetails();
                        listData.CityId = Convert.ToInt32(rdr["CityId"]);
                        listData.City = rdr["City"].ToString();
                        listData.CreatedBy = rdr["CreatedBy"].ToString();
                        listData.UpdatedBy = rdr["UpdatedBy"].ToString();
                        listData.IsActive = Convert.ToBoolean(rdr["Active"]);
                        listData.message = rdr["message"].ToString();
                        listData.res = Convert.ToInt32(rdr["res"]);
                        list.Add(listData);
                    }
                    con.Close();
                }
                return list;
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
