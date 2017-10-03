using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkpEsport
{
    public partial class LoginPage : System.Web.UI.Page
    {
        private readonly DbConnection _dbCon = new DbConnection();
        private Users _usr;
        Encrypt _crypt = new Encrypt();
        private string _loginName;
        private string _loginPassword;

        protected void Page_Load(object sender, EventArgs e)
        {
            _loginName = tb_Email.Text;
            _loginPassword = tb_Password.Text;
        }

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
                    //lbl_User.Text = Session["Username"].ToString();
                Response.Redirect("IndexPage.aspx");
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



        protected void btn_Register_OnClick(object sender, EventArgs e)
        {
            if (tb_RegUsername.Text != string.Empty && tb_RegPassword.Text != string.Empty && tb_RegPasswordRepeat.Text != string.Empty && tb_RegEmail.Text != string.Empty)
            {

                Users usr = new Users(tb_RegUsername.Text, tb_RegPassword.Text, tb_RegEmail.Text);

                usr.RegisterUser();

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + usr + "');", true);
            }
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Fill out the registration form properly please" + "');", true);

        }

        protected void btn_CloseCon_OnClick(object sender, EventArgs e)
        {
            _dbCon.CloseConnection();
        }
    }
}