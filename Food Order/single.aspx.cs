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
    public partial class single : System.Web.UI.Page
    {
        SqlConnection sq = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        public string name = "";
        public string price = "";
        public string qty = "";
        public string description = "";
        public string type = "";
        public string img = "";
        public string Id = "";
        public static int i = 0, j = 0;
        public string id = "";
        public string nm2 = "";
        public string sp = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";

            if(Request.Form["add"]=="Add to Cart")
            {
                i++; j++;
                Session["pname'" + i + "'"] = Request.Form["proname"].ToString();
                Session["rate'" + i + "'"] = Request.Form["proqty"].ToString();
                Session["qty'" + i + "'"] = DropDownList1.SelectedItem.ToString();
                Session["i"] = i;
                Label1.Text = "<h3>Added to cart !</h3>";
            }

            id = Request.Form["pro"];

            try
            {
                sq.Open();
                SqlCommand x = new SqlCommand();
                x.Connection = sq;
                string qr = "Select * from foods where Id = " + id + "";
                x.CommandText = qr;

                SqlDataReader r = x.ExecuteReader();
                while(r.Read())
                {
                    Id = (r["Id"].ToString());
                    price = (r["foodprice"].ToString());
                    name= (r["foodname"].ToString());
                
                    description= (r["fooddes"].ToString());
                    type= (r["foodtype"].ToString());
                    img= (r["img"].ToString());
                    sp = price;
                    nm2 = name;
                }

                sq.Close();
            }

            catch(Exception eh)
            {

                Label1.Text = "error" + eh;
            }
        }
    }
}