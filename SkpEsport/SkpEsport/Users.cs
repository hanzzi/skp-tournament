using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace SkpEsport
{
    public class Users
    {
        private DbConnection _dbCon = new DbConnection();
        /*Properties for users
         * use this class as a template for users
         */
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Rank { get; set; }
        public string Team { get; set; }
        public string Temp { get; set; }

        public Users()
        {

        }

        public Users(string username, string password)
        {
            Username = username;
            Password = password;

        }

        public Users(string username, string password, string email)
        {
            Username = username;
            Password = password;
            Email = email;
        }


        public void RegisterUser()
        {

        }

        public bool ValidateLogin()
        {
            return _dbCon.UserLogin(Username, Password);
        }

        public bool Delete()
        {
            _dbCon.DeleteUser(Username);

            return false;
        }




    }
}
