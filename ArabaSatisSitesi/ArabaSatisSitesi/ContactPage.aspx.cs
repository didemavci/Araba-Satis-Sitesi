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
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd=new SqlCommand("insert into TableContact (ContactMessage,ContactMail,ContactName) values (@c1,@c2,@c3)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandAdd.Parameters.AddWithValue("@c1",txtName.Text);
            commandAdd.Parameters.AddWithValue("@c2", TxtMail.Text);
            commandAdd.Parameters.AddWithValue("@c3",TxtMesaj.Text);

            commandAdd.ExecuteNonQuery();



        }
    }
}