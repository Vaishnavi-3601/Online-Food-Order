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
    public partial class ManageReport : System.Web.UI.Page
    {
        public int i=0, j=0, k=0;
        SqlConnection sq = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            sq.Open();

            string qr = "select * from register ";
            SqlCommand cmd = new SqlCommand(qr, sq);
            SqlDataReader R = cmd.ExecuteReader();

            while (R.Read())
            {
                i++;
                }

            sq.Close();



            sq.Open();

            string qr1 = "select * from booking ";
            SqlCommand cmd1 = new SqlCommand(qr1, sq);
            SqlDataReader R1 = cmd1.ExecuteReader();

            while (R1.Read())
            {
                j++;
            }

            sq.Close();

            sq.Open();

            string qr2 = "select * from foods ";
            SqlCommand cmd2 = new SqlCommand(qr2, sq);
            SqlDataReader R2 = cmd2.ExecuteReader();

            while (R2.Read())
            {
                k++;
            }

            sq.Close();
        }
    }
}