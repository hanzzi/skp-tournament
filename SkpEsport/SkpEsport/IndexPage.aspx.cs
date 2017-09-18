using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace SkpEsport
{
    public partial class IndexPage : System.Web.UI.Page
    {
        private readonly DbConnection _dbCon = new DbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_login_OnClick(object sender, EventArgs e)
        {
            Users user = new Users(this.tb_Email.Text, this.tb_Password.Text);
            bool isValid = user.ValidateLogin();
        }

        protected void btn_test_OnClick(object sender, EventArgs e)
        {
            //if (_dbCon.UserLogin("Test", "Test123"))
            //{
            //    Response.Redirect("LoginTest.aspx");
            //}
            //else
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Login Failed" + "');", true);
            //}
        }
    }
}