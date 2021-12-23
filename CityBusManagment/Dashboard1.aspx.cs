using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CityBusManagment
{
    public partial class Dashboard1 : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        ConnectionDB db = new ConnectionDB();
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8VJ7USG;Initial Catalog=CityBus;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_showdriver1_Click(object sender, EventArgs e)
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

           
        }

        protected void btn_showbusline1_Click(object sender, EventArgs e)
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


            
        }
    }
}