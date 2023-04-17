using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ArabaSatisSitesi.Classes;

namespace ArabaSatisSitesi
{
    public partial class AdminAddCars1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Convert.ToBoolean(Session["IsUserAdmin"] = true))
            {
                SqlCommand cmd = new SqlCommand("select * from TableCar where ArabaOnay=@p1", SqlConnectionClass.connection);

                SqlConnectionClass.CheckConnection();

                cmd.Parameters.AddWithValue("@p1", false);

                SqlDataReader dr = cmd.ExecuteReader();

                DataList1.DataSource = dr;

                DataList1.DataBind();
                dr.Close();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

           
        }
    }
}