using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ArabaSatisSitesi.Classes;
using System.ComponentModel.DataAnnotations;

namespace ArabaSatisSitesi
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 5;
        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from TableUser where UserMail=@u1 and UserPassword=@u2",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string shapas = SHA256Converter.ComputeSha256Hash(txtsifre.Text);

            cmd.Parameters.AddWithValue("@u1", txtmail.Text);
            cmd.Parameters.AddWithValue("@u2", shapas);

            DataTable dt = new DataTable();
            SqlDataAdapter da=new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows.Count>0)
            {

                if (txtmail.Text=="didemavci971@gmail.com")
                {
                    Session["IsUserAdmin"] = true;
                    Session["UserMail"] = "didemavci971@gmail.com";
                    Response.Redirect("AdminDeneme.aspx");
                }
                else
                {
                    Session["IsUserOnline"] = true;
                    Response.Redirect("ListCars.aspx");
                }
            }
            else
            {
                Response.Write("mail veya şifre hatalı");
            }
        }
    }
}