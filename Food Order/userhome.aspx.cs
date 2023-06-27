using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order
{
    public partial class userhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookedorder.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("editprofile.aspx");
        }
    }
}