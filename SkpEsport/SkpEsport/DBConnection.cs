using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace SkpEsport
{
    public class DbConnection
    {
        private MySqlConnection _connection;
        private string _server;
        private string _database;
        private string _uid;
        private string _password;


        private void Connect()
        {
            _server = "127.0.0.1";
            _database = "dankdb";
            _uid = "Admin";
            _password = "admin123";

            string conString = "SERVER=" + _server + ";" + "DATABASE=" +
                               _database + ";" + "UID=" + _uid + ";" + "PASSWORD=" + _password + ";";

            _connection = new MySqlConnection(conString);
        }



        /**
            This is just a test function for testing the connection to the database. 
         */
        public string CheckConnection()
        {
            Connect();
            try
            {
                _connection.Open();
                return "Connection success";
            }
            catch (MySqlException e)
            {
                string errorString = "";
                switch (e.Number)
                {
                    case 0:
                        errorString = "Unable to connect";
                        break;
                    case 1045:
                        errorString = "Connected, but Username and/or Password is incorrect";
                        break;

                    default:
                        errorString = e.ToString();
                        break;
                }


                return errorString;
            }
        }

        public bool OpenConnection()
        {
            Connect();
            try
            {
                _connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                //When handling errors, you can your application's response based 
                //on the error number.
                //The two most common error numbers when connecting are as follows:
                //0: Cannot connect to server.
                //1045: Invalid user name and/or password.
                switch (ex.Number)
                {
                    case 0:
                        //unable to connect
                        break;

                    case 1045:
                        //Invalid username/password,
                        break;
                }
                return false;
            }
        }


        public bool CloseConnection()
        {
            Connect();
            try
            {
                _connection.Close();
                return true;
            }
            catch (MySqlException e)
            {
                return false;
            }
        }

        public bool UserExists(string username)
        {
            Connect();

            const string query = "select count(*) from users where username = @username;";

            MySqlCommand cmd = new MySqlCommand(query, _connection) { CommandType = CommandType.Text }; //Opretter cmd objekt af MySqlCommand og derefter initialisere objektet og angiver hvilken command type det er.
            cmd.Parameters.AddWithValue("@username", username); //Dette bruges til parameteriserede queries. Det forhindre SQL Injections. "@username" i query variablen bliver erstattet med username variablen som bliver parset til denne method

            using (cmd) //Køre sql inde i en using så resourcerne bliver disposed når sql arbejdet er færdigt
            {
                cmd.Connection.Open(); //Åbner forbindelsen
                int usrCheck = Convert.ToInt32(cmd.ExecuteScalar().ToString()); //Leder efter en bruger med bruger med brugernavnet fra "username" variablen og returnere 1 hvis den existere.
                cmd.Connection.Close(); //Lukker forbindelsen 

                if (usrCheck == 1)
                {
                    return true;
                }

            }
            return false;
        }

        public void CreateUser(string usrname, string pwd, string email)
        {
            
        }

    }
}