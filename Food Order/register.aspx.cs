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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection sq = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sq.Open();
            int x = 0;
            x = check(TextBox2.Text);
            if (x == 0)
            {


                String qr = "insert into register(name,email,mobile,city,password) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                SqlCommand cmd = new SqlCommand(qr, sq);
                cmd.ExecuteNonQuery();
                Label1.Text = "Registration Successful";
                sq.Close();
            }
            else
            {
                Label1.Text = "Email Id already exist.";
            }
        }
        int check(string x)
        {
            int i = 0;
            
            string qr = "select * from register where email='" + x + "'";
            SqlCommand cmd = new SqlCommand(qr, sq);
            SqlDataReader R = cmd.ExecuteReader();

            while (R.Read())
            {
                i++;
            }
            return i;
        }
    }
}