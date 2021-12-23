using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace CityBusManagment
{
    public partial class Dashboard : System.Web.UI.Page
    {

        SqlCommand cmd;
        SqlDataAdapter da;
        ConnectionDB db = new ConnectionDB();
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8VJ7USG;Initial Catalog=CityBus;Integrated Security=True");
       

        private void hideMenu()
        {
            if (pnl_driveredit.Visible == true)
                pnl_driveredit.Visible = false;
            if (pnl_lineedit.Visible == true)
                pnl_lineedit.Visible = false;
        }

        private void showMenu(Panel menu)
        {
            if (menu.Visible == false)
            {
                hideMenu();
                menu.Visible = true;
            }
            else
                menu.Visible = false;
        }    
          

        




        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }    
            

           
           
        
        
        
        protected void btn_showdriver_Click(object sender, EventArgs e)
        {

           
            
                con.Open();
                cmd = new SqlCommand("Select * From Drivers", con);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                gw_drivers.DataSource = dt;
                gw_drivers.DataBind();

                
             
            con.Close();

            showMenu(pnl_driveredit);
        }

        protected void btn_showbusline_Click(object sender, EventArgs e)
        {
            
            con.Open();
            cmd = new SqlCommand("Select * From Buslines", con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gw_drivers.DataSource = dt;
            gw_drivers.DataBind();



            con.Close();


            showMenu(pnl_lineedit);
        }

        protected void btn_driveredit_Click(object sender, EventArgs e)
        {
            hideMenu();
            Response.Redirect("EditDrivers1.aspx");
        }

        protected void btn_lineedit_Click(object sender, EventArgs e)
        {
            hideMenu();
            Response.Redirect("EditBusLines.aspx");
        }
    }
}