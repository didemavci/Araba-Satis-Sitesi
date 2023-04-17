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
    public partial class AddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Convert.ToBoolean(Session["IsUserOnline"] = true))
            {
                if (Page.IsPostBack == false)
                {
               
                    SqlCommand sqlconnectionBrand = new SqlCommand("select*from TableBrand ", SqlConnectionClass.connection);

                    SqlConnectionClass.CheckConnection();

                    SqlDataReader dr = sqlconnectionBrand.ExecuteReader();

                    DropDownMarka.DataTextField = "MarkaIsim";
                    DropDownMarka.DataValueField = "MarkaID";

                    DropDownMarka.DataSource = dr;
                    DropDownMarka.DataBind();

                    dr.Close();
                 }
            }
            

        }

        protected void btnekle_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("insert into TableCar (ArabaModel,ArabaMarkaID,AracYakitTipi,ArabaAciklama,ArabaIletisim,ArabaSatici,ArabaFoto,ArabaUcret) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandAdd.Parameters.AddWithValue("@p1", txtmodel.Text);
            commandAdd.Parameters.AddWithValue("@p8", Convert.ToInt32(DropDownMarka.SelectedValue));
            commandAdd.Parameters.AddWithValue("@p2", txtfoto.Text);
            commandAdd.Parameters.AddWithValue("@p3", txtyakit.Text);
            commandAdd.Parameters.AddWithValue("@p4", txtaciklama.Text);
            commandAdd.Parameters.AddWithValue("@p5", txtsatici.Text);
            commandAdd.Parameters.AddWithValue("@p6", txttelefon.Text);
            commandAdd.Parameters.AddWithValue("@p7", txtfiyat.Text);
            
        }
    }
}