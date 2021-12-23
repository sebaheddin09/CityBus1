using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CityBusManagment
{
    
    public partial class EditDriver : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        ConnectionDB db = new ConnectionDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DriverGridView();
            }

        }

        void DriverGridView()
        {
            DataTable dt = new DataTable();
            using (con = new SqlConnection(db.GetConnection()))
            {
                con.Open();
                da = new SqlDataAdapter("Select * From Drivers", con);
                da.Fill(dt);
            }
            gv_editdriver.DataSource = dt;
            gv_editdriver.DataBind();
        }

        protected void gv_editdriver_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddNew"))
            {
                using(con = new SqlConnection(db.GetConnection()))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO Drivers (DriverID, DriverName, BirthDate, PhoneNumber, BusPlate, BusModel) VALUES (@DriverID, @DriverName, @BirthDate, @PhoneNumber, @BusPlate, @BusModel)", con);
                    cmd.Parameters.AddWithValue("@DriverID", (gv_editdriver.FooterRow.FindControl("tb_idfoot") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@DriverName", (gv_editdriver.FooterRow.FindControl("tb_namefoot") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@BirthDate", (gv_editdriver.FooterRow.FindControl("tb_BirthDatefoot") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@PhoneNumber", (gv_editdriver.FooterRow.FindControl("tb_PhoneNumberfoot") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@BusPlate", (gv_editdriver.FooterRow.FindControl("tb_BusPlatefoot") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@BusModel", (gv_editdriver.FooterRow.FindControl("tb_BusModelfoot") as TextBox).Text.Trim());
                    cmd.ExecuteNonQuery();
                    DriverGridView();
                }
            }
        }

        protected void gv_editdriver_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv_editdriver.EditIndex = e.NewEditIndex;
            DriverGridView();

        }

        protected void gv_editdriver_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv_editdriver.EditIndex = -1;
            DriverGridView();
        }

        protected void gv_editdriver_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            using (con = new SqlConnection(db.GetConnection()))
            {
                con.Open();
                cmd = new SqlCommand("UPDATE Drivers SET DriverName = @DriverName, BirthDate = @BirthDate, PhoneNumber = @PhoneNumber, BusPlate = @BusPlate, BusModel = @BusModel WHERE  DriverID = @DriverID ", con);
               
                cmd.Parameters.AddWithValue("@DriverName", (gv_editdriver.Rows[e.RowIndex].FindControl("tb_name") as TextBox).Text.Trim());
                cmd.Parameters.AddWithValue("@BirthDate", (gv_editdriver.Rows[e.RowIndex].FindControl("tb_BirthDate") as TextBox).Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNumber", (gv_editdriver.Rows[e.RowIndex].FindControl("tb_PhoneNumber") as TextBox).Text.Trim());
                cmd.Parameters.AddWithValue("@BusPlate", (gv_editdriver.Rows[e.RowIndex].FindControl("tb_BusPlate") as TextBox).Text.Trim());
                cmd.Parameters.AddWithValue("@BusModel", (gv_editdriver.Rows[e.RowIndex].FindControl("tb_BusModel") as TextBox).Text.Trim());
                cmd.Parameters.AddWithValue("@DriverID", Convert.ToInt32(gv_editdriver.DataKeys[e.RowIndex].Value.ToString()));
                cmd.ExecuteNonQuery(); 
                
                //gv_editdriver.EditIndex = -1;
                DriverGridView();
            }
        }

        protected void gv_editdriver_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (con = new SqlConnection(db.GetConnection()))
            {
                con.Open();
               
               cmd = new SqlCommand("DELETE FROM Drivers WHERE  DriverID = @DriverID ", con);
               cmd.Parameters.AddWithValue("@DriverID", Convert.ToInt32(gv_editdriver.DataKeys[e.RowIndex].Value.ToString()));
               
                cmd.ExecuteNonQuery();
                
                DriverGridView();
            }
        }
     

    }
}