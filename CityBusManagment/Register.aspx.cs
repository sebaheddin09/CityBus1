using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CityBusManagment
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        ConnectionDB db = new ConnectionDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            using(con = new SqlConnection(db.GetConnection()))
            {
                if (tb_username.Text == "" || tb_password.Text == "")
                    lbl_message.Text = "Username and Password cannot be empty!";
                else if (tb_password.Text != tb_confirmpassword.Text)
                    lbl_message.Text = "Password don't match";
                else
                {



                    con.Open();
                    cmd = new SqlCommand("INSERT INTO Customer ( FullName, Email, Username, Password) VALUES ( @FullName, @Email, @Username, @Password)", con);
                    cmd.Parameters.AddWithValue("@FullName", tb_fullname.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", tb_email.Text.Trim());
                    cmd.Parameters.AddWithValue("@Username", tb_username.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", tb_password.Text.Trim());
                    cmd.ExecuteNonQuery();
                    Clear();
                    lbl_message.Text = "Successfull Register";
                }
            }
        }
        void Clear()
        {
            tb_fullname.Text = tb_email.Text = tb_username.Text = tb_password.Text = tb_confirmpassword.Text = "";
        }
    }
}