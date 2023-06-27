using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Food_Order
{
    public partial class checkout : System.Web.UI.Page
    {
        SqlConnection sq = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        public string nm = "", ad = "", mb = "", city = "";
        double an;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]==null)
            {
                Response.Redirect("login.aspx");
            }
            if(Request.Form["Check"]=="Checkout")
            {
                sq.Open();
                SqlCommand x = new SqlCommand();
                x.Connection = sq;
                string qr = "Select * from register where email = '" + Session["user"].ToString() +"'";
                x.CommandText = qr;

                SqlDataReader r = x.ExecuteReader();
                while (r.Read())
                {
                    nm = (r["name"].ToString());
                    ad = (r["email"].ToString());
                    mb = (r["mobile"].ToString());
                    city = (r["city"].ToString());
                }
                sq.Close();
            }
        }
    }
}