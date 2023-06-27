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
    public partial class ManageFood : System.Web.UI.Page
    {
        SqlConnection sq = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string img = "uploads/" + FileUpload1.FileName;
            sq.Open();
            String qr = "insert into foods(foodtype,foodname,foodprice,fooddes,img) values ('"+DropDownList1.SelectedItem.Value+"','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + img + "')";
            SqlCommand cmd = new SqlCommand(qr, sq);
            cmd.ExecuteNonQuery();
            Label1.Text = "Food Added";
            sq.Close();
            if(FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("uploads//" + FileUpload1.FileName));
            }
        }
    }
}