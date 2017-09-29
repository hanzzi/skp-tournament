using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkpEsport
{
    public partial class LoginTest : System.Web.UI.Page
    {
        private string _usr;
        private string _auth;

        Encrypt _crypt = new Encrypt();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] != null && Session["IsAuth"] != null)
            {
                _usr = Session["Username"].ToString();
                _auth = Session["IsAuth"].ToString();

                if (_crypt.CheckAuth(_auth))
                {
                    //lbl_test1.Text = _usr;
                    //lbl_test2.Text = _auth;
                    //lbl_Session.Text = "Session Info: " + Session.SessionID + " -------- " + Session["IsAuth"] + " ----------- ";
                    var sessiontest = new StringBuilder();
                    foreach (string key in Session.Keys)
                    {
                        //Response.Write(key + " - " + Session[key] + "<br />");

                        sessiontest.Append(key + " - " + Session[key] + "<br />");
                    }
                    lbl_Session.Text = sessiontest.ToString();
                }
                else
                {
                    Session.RemoveAll();
                    Response.Redirect("IndexPage.aspx");
                }
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