using ArabaSatisSitesi.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArabaSatisSitesi
{
    public partial class MessageDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["ContactID"]);

            SqlCommand cmd=new SqlCommand("delete from TableContact where ContactID=@m1",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            cmd.Parameters.AddWithValue("@m1", selectedID);
            cmd.ExecuteNonQuery();

            Response.Redirect("Messages.aspx");
        }
    }
}