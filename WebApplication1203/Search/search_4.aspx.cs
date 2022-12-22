using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1203.Search
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Search/search_1.aspx");   //Product(ID)
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Search/search_2.aspx");   //Title
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Search/search_3.aspx");   //Category(ID)
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Search/search_4.aspx");   //Location
        }
    }
}