using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace CityBusManagment
{
    
    public partial class ResetPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        ConnectionDB db = new ConnectionDB();
        Random random;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private int generateCode()
        {
            if (random == null) 
                random = new Random();

            return random.Next(10000, 99999);
        }

        string email = "";
        private bool SendMail()
        {
            try
            {
                string to = tb_email.Text;
                email = to;
                string from = "citybusmanagment@gmail.com";
                string pass = "oyxnvtkooozialeg";
                int code = generateCode();

                MailMessage mm = new MailMessage();
                mm.To.Add(new MailAddress(to));
                mm.From = new MailAddress(from, "City Bus Managment System");
                mm.Subject = "Password Recovery";
                mm.IsBodyHtml = true;
                mm.Body = "Your account recovery code : <b>" + code + "</b>";

                NetworkCredential nc = new NetworkCredential();
                nc.UserName = from;
                nc.Password = pass;

                SmtpClient sc = new SmtpClient();
                sc.Host = "smtp.gmail.com";
                sc.EnableSsl = true;
                sc.Port = 587;
                sc.UseDefaultCredentials = false;
                sc.Credentials = nc;
                sc.DeliveryMethod = SmtpDeliveryMethod.Network;
                sc.Send(mm);

                writetoDatabase(code);
                return true;
        }
            catch 
            { 
                return false; 
            }
           
        }

        private bool writetoDatabase(int code)
        {
            try
            {
                using (con = new SqlConnection(db.GetConnection()))
                {
                    con.Open();
                    using (cmd = new SqlCommand("INSERT INTO Resetpass (UEmail, Code) VALUES(@Email, @Code);", con))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Code", code);
                        cmd.ExecuteNonQuery();
                    }
                }
                return true;
        }
            catch
            {
                return false;
            }
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(db.GetConnection()))
            {
                con.Open();
                using(cmd = new SqlCommand("SELECT * FROM Customer WHERE Email=@Email", con))
                {
                    cmd.Parameters.AddWithValue("@Email", tb_email.Text.Trim());
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                   
                    if(count == 1)
                    {

                        if (SendMail())
                        {
                            lbl_message1.Text = "Recovery code was sent to your email!";
                            pnl_verificationcode.Visible = true;
                        }
                        else
                        {
                            lbl_message1.Text = "Recovery code couldn't sent! Please try again!";
                        }
                    }
                    else
                    {
                        lbl_message1.Text = "Email don't found!";
                    }  
                    
                    
                        
                }

            }


        }

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            string code = tb_verificationcode.Text.Trim();
            using(con = new SqlConnection(db.GetConnection()))
            {
                con.Open();
                using (cmd = new SqlCommand("SELECT count(Id) FROM Resetpass WHERE UEmail = @Email and Code = @Code ", con))
                {
                    cmd.Parameters.AddWithValue("@Email", tb_email.Text.Trim());
                    cmd.Parameters.AddWithValue("@Code", code);
                    int rowCount = Convert.ToInt32(cmd.ExecuteScalar());

                    if(rowCount == 1)
                    {
                        pnl_changepassword.Visible = true;
                        pnl_verificationcode.Visible = false;
                        pnl_email.Visible = false;
                    }
                    else
                    {
                        lbl_message1.Text = "Recovery code not correct!";
                    }
                }

            }
        }

        protected void btn_change_Click(object sender, EventArgs e)
        {
            string newpass = tb_newpassword.Text;
            string connewpass = tb_connewpassword.Text;

            if (newpass != connewpass)
            {
                lbl_message1.Text = "Password don't match";
            }

            using (con = new SqlConnection(db.GetConnection()))
            {
                con.Open();
                using (cmd = new SqlCommand("UPDATE Customer SET Password = @newpass WHERE Email = @Email", con))
                {
                    cmd.Parameters.AddWithValue("@newpass", newpass);
                    cmd.Parameters.AddWithValue("@Email", tb_email.Text.Trim());
                    int affectrows = cmd.ExecuteNonQuery();
                    if(affectrows > 0)
                    {
                        lbl_message1.Text = "Password change successfully";
                        btn_gotologin.Visible = true;
                    }
                    else
                    {
                        lbl_message1.Text = "Password don't change";
                    }
                }
            }
        }

        protected void btn_gotologin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginascustomer.aspx");
        }
    }
}