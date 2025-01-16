using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimerosejemplosASP.NET
{
    public partial class _Default : Page
    {
        public string user {  get; set; }       
        public string pass {  get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
                user = Session["user"] != null ? Session["user"].ToString() : "";
                pass = Session["pass"] != null ? Session["pass"].ToString() : "";
                lblUser.Text = user;
                lblPass.Text = pass;
        }
    }
}