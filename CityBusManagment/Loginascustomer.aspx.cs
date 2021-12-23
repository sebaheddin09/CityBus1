using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CityBusManagment
{
    public partial class Loginascustomer : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        ConnectionDB db = new ConnectionDB();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login1_Click(object sender, EventArgs e)
        {
            string username = tb_username1.Text;
            string password = tb_password1.Text;

            using (con = new SqlConnection(db.GetConnection()))
            {
                con.Open();

                cmd = new SqlCommand("SELECT * FROM Customer where Username = @Username AND Password = @Password", con);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);

                
               

                int id = Convert.ToInt32(cmd.ExecuteScalar());

                 if (id > 0)
                 {
                     Session["user"] = id;
                     Response.Redirect("Dashboard1.aspx");
                    
                     con.Close();
                 }

            }


              
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btn_resetpassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("ResetPassword.aspx");
        }
    }
}