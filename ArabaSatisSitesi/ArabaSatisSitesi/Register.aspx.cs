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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnkayit_Click(object sender, EventArgs e)
        {

            SqlCommand cmdregister = new SqlCommand("insert into TableUser (UserMail,UserPassword) values (@u1,@u2)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string newpass = SHA256Converter.ComputeSha256Hash(txtsifre.Text);

            cmdregister.Parameters.AddWithValue("@u1", txtmail.Text);
            cmdregister.Parameters.AddWithValue("@u2", newpass);

            cmdregister.ExecuteNonQuery();
        }
    }
}