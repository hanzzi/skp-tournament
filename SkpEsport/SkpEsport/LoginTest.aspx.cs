using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkpEsport
{
    public partial class LoginTest : System.Web.UI.Page
    {
        private string usr;
        private string auth;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] != null && Session["IsAuth"] != null)
            {
                usr = Session["Username"].ToString();
                auth = Session["IsAuth"].ToString();

                lbl_test1.Text = usr;
                lbl_test2.Text = auth;
            }
            else
            {
                Response.Redirect("IndexPage.aspx");
            }

            


        }

        protected void btn_DbStuff_OnClick(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Session["Username"] + Session["IsAuth"] + "');", true);


        }
    }
}