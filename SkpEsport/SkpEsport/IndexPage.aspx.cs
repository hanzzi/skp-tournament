using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkpEsport
{
    public partial class IndexPage : System.Web.UI.Page
    {
        private string _username, _password;
        private DbConnection dbCon = new DbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_login_OnClick(object sender, EventArgs e)
        {
            _username = tb_Email.Text;
            _password = tb_Password.Text;
           // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + _username + " ----- " + _password + "');", true);

            string conmsg = dbCon.CheckConnection();
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + conmsg + "');", true);
            if (dbCon.CheckConnection() == "Connection success")
            {
                Response.Redirect("LoginTest.aspx");
            }


        }

        protected void btn_test_OnClick(object sender, EventArgs e)
        {
            if (dbCon.OpenConnection())
            {
                dbCon.UserExists("Admin");
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Admin found" + "');", true);

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Something went wrong" + "');", true);
            }

            //if (dbCon.UserExists("Admin"))
            //{

            //}

        }
    }
}