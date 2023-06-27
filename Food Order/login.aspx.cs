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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection sq = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        String email = "", pass = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sq.Open();
            if(DropDownList1.SelectedItem.Text=="User")
            {
                string qr = "select * from register where email='"+ TextBox1.Text +"'";
                SqlCommand cmd = new SqlCommand(qr, sq);
                SqlDataReader R = cmd.ExecuteReader();

                while (R.Read())
                {
                    email = R["email"].ToString();
                    pass = R["password"].ToString();
                }

                if(email == TextBox1.Text && pass == TextBox2.Text)
                {
                    Session["user"] = email;
                    Response.Redirect("userhome.aspx");
                    //Label1.Text = "Login success";
                }
                else
                {
                    Label1.Text = "Login Failed";
                }

            }
            if(DropDownList1.SelectedItem.Text=="Admin")
            {
                string qr = "select * from adminlogin where email='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(qr, sq);
                SqlDataReader R = cmd.ExecuteReader();

                while (R.Read())
                {
                    email = R["email"].ToString();
                    pass = R["password"].ToString();
                }

                if (email == TextBox1.Text && pass == TextBox2.Text)
                {
                    Session["admin"] = email;

                    Response.Redirect("adminhome.aspx");
                    //Label1.Text = "Login success";
                }
                else
                {
                    Label1.Text = "Login Failed";
                }
            }
            sq.Close();
        }
    }
}