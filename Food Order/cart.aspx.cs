using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order
{
    public partial class cart : System.Web.UI.Page
    {
        public Double k = 0, am = 1, tot = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            k = Convert.ToDouble(Session["i"]);
        }
    }
}