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

    public partial class orderconfirm : System.Web.UI.Page
    {
        public int or = 0;
        double ft = 0;
        SqlConnection sq = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Guid guid = Guid.NewGuid();
            Random random = new Random();
            int i = random.Next();
            string str = i.ToString();

            Label1.Text = "";
            double k = Convert.ToDouble(Session["i"]);

            string value = Hidden1.Value;
            sq.Open();
            for (int s = 1; s <= k; s++)
            {
                try
                {
                    Double am = Convert.ToDouble(Session["qty'" + s + "'"]) * Convert.ToDouble(Session["rate'" + s + "'"]);
                    string em = Session["user"].ToString();
                    string qra = "insert into booking(invoiceid,productname,quantity,rate,amount,srno,userid) values('" + str + "','" + Session["pname'" + s + "'"] + "','" + Session["qty'" + s + "'"] + "', '" + Session["rate'" + s + "'"] + "','" + am + "','" + s + "','" + em + "')";
                    SqlCommand cmd1 = new SqlCommand(qra, sq);
                    cmd1.ExecuteNonQuery();
                    ft = ft + Convert.ToDouble(Session["rate'" + s + "'"]);
                    Label1.Text = "";
                    Session["pname'" + s + "'"] = null;
                    Session["qty'" + s + "'"] = null;
                    Session["rate'" + s + "'"] = null;

                }
                catch (Exception ex)
                {
                    Label1.Text = "Fail" + ex;
                }
            }

            string st = "order placed";
            string dt = DateTime.Now.ToString("dd-MM-yyyy hh:mm:ss");

            string em2 = Session["user"].ToString();
            string qra2 = "insert into invoicedetails(invoiceid,finaltotal,userid,date,status) values('" + str + "','" + ft + "','" + em2 + "','" + dt + "','" + st + "')";
                    SqlCommand cmd2 = new SqlCommand(qra2, sq);
                    cmd2.ExecuteNonQuery();

                    sq.Close();

                }
            }
        }
    