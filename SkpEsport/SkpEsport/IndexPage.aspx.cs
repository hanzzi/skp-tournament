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
        
        private string username, password;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.Form["txtFormValue"]))
            {
                username = Request.Form["inputUsername"];
                password = Request.Form["inputPassword"];
            }

        }
    }
}