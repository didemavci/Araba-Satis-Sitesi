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
    public partial class Messages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd=new SqlCommand("select * from TableContact",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();
            SqlDataReader dr= cmd.ExecuteReader();

            DataList1.DataSource= dr;
            DataList1.DataBind();

            dr.Close();
        }

        
    }
}