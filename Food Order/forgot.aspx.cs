using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;

namespace Food_Order
{
    public partial class forgot : System.Web.UI.Page
    {
        SqlConnection sq = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        String em = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sq.Open();
            SqlCommand x = new SqlCommand();
            x.Connection = sq;
            em = TextBox1.Text;
            string qr="select * from register where email='" + TextBox1.Text + "'";
            x.CommandText = qr;
            SqlDataReader r = x.ExecuteReader();
            string b = "";
            while (r.Read())
            {
                b = r["password"].ToString();

            }
            sq.Close();
            Email("Hello Your Password is - " + b);

        }
        public void Email(string htmlString)
        {
            try
            {
                em = TextBox1.Text;
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress("vaishnavi3601@gmail.com");
                message.To.Add(new MailAddress(em));
                message.Subject = "Password recovery from online Food order";
                message.IsBodyHtml = true;
                message.Body = htmlString;
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("vaishnavi3601@gmail.com","Vaishnavi@@2110");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);
            }
            catch(Exception eh)
            {
                Label1.Text = eh.ToString();
            }
        }
    }
}