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
            Users usrs = new Users(tb_Email.Text, tb_Password.Text);
            _dbCon.UserLogin(usrs.Username, usrs.Password);


        }

        protected void btn_test_OnClick(object sender, EventArgs e)
        {
            Encrypt crypt = new Encrypt();
            string hash = crypt.ComputeHash("Test123");
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + hash + "');", true);
        }
    }
}