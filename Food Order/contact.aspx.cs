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
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection sq = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sq.Open();
            String qr = "insert into contact(name,email,message) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            SqlCommand cmd = new SqlCommand(qr, sq);
            cmd.ExecuteNonQuery();
            Label1.Text = "Your response is successfully done";
            sq.Close();
        }
    }
}