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
        private List<bool> videoGames;

        /*
         Page_Load sætter _loginName & _loginPassword til værdien af de to login textbokses .Text værdier
             */
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btn_test_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("LoginTest.aspx");
        }

        protected void btn_CreateTeam_OnClick(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Create Team Button" + "');", true);
            



            Teams team = new Teams(tb_TeamName.Text, );



        }
    }
}