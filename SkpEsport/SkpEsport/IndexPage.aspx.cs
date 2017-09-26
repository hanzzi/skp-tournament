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
        /*
            Globale variabler. 
         */
        private readonly DbConnection _dbCon = new DbConnection();
        Encrypt _crypt = new Encrypt();
        private string _loginName;
        private string _loginPassword;
        private string _test;

        /*
         Page_Load sætter _loginName & _loginPassword til værdien af de to login textbokses .Text værdier
             */
        protected void Page_Load(object sender, EventArgs e)
        {
            _loginName = tb_Email.Text;
            _loginPassword = tb_Password.Text;
            

            Encrypt crypt2 = new Encrypt();
            if (Session["IsAuth"] != null)
            {
                if (_crypt.CheckAuth(Session["IsAuth"].ToString()))
                {
                ScriptMngr1.EnablePartialRendering = false;

                }
            }
            else
            {
                ScriptMngr1.EnablePartialRendering = true;
            }
        }

        /*
         OnClick event til login knappen. Activere login validering.
             */
        protected void btn_login_OnClick(object sender, EventArgs e)
        {
            Users user = new Users(this._loginName, this._loginPassword);
            bool isValid = user.ValidateLogin();

            if (_dbCon.OpenConnection())
            {
                if (isValid)
                {
                    Session["Username"] = tb_Email.Text;
                    Session["IsAuth"] = _crypt.GetAuthVal();
                    lbl_User.Text = Session["Username"].ToString();

                    Response.Redirect("LoginTest.aspx");
                }
                else
                {
                  ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Login Failed" + "');", true);
                }
            }
            else
            {
                  ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Connection Failed" + "');", true);
            }

        }

        protected void btn_test_OnClick(object sender, EventArgs e)
        {
            //string test1 = _crypt.GetAuthVal();
            //if (_crypt.CheckAuth("ioseuhglsdkgjnsdlgoisdgl seuglseiurtg seriug se tseuh gk"))
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Validation success" + "');", true);
            //}
            //else
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Validation Failed" + "');", true);

            //}
            //if (_dbCon.UserLogin("Test", "Test123"))
            //{
            //    Response.Redirect("LoginTest.aspx");
            //}
            //else
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Login Failed" + "');", true);
            //}
            Response.Redirect("LoginTest.aspx");
        }
    }
}