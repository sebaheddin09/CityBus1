using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CityBusManagment
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        ConnectionDB db = new ConnectionDB();

        



        protected void Page_Load(object sender, EventArgs e)
        {

        }

       


        protected void btn_login_Click(object sender, EventArgs e)
        {
            string username = tb_username.Text;
            string password = tb_password.Text;
            string admincode = tb_admincode.Text;

            using (con = new SqlConnection(db.GetConnection()))
            {



                con.Open();

                cmd = new SqlCommand("SELECT * FROM Admin where Username = @Username AND Password = @Password AND AdminCode = @AdminCode", con);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@AdminCode", admincode);



                int id = Convert.ToInt32(cmd.ExecuteScalar());

                if (id > 0)
                {
                    Session["user"] = id;
                    Response.Redirect("Dashboard.aspx");
                    con.Close();
                }

            }

            


        }
        
        
        

        protected void tb_admincode_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}