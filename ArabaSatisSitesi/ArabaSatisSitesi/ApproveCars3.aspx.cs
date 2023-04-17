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
    public partial class ApproveCars3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int seciliid =Convert.ToInt32( Request.QueryString["carid"]);

            SqlCommand cmd = new SqlCommand("Update TableCar set ArabaOnay=@p1 where ArabaID=@a1",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();
            cmd.Parameters.AddWithValue("@p1", true);
            cmd.Parameters.AddWithValue("@a1", seciliid);

            cmd.ExecuteNonQuery();
            Response.Redirect("AdminAddCars1.aspx");


        }
    }
}