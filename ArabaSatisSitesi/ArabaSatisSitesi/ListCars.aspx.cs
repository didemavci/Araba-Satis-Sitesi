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
    public partial class ListCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("select ArabaID,ArabaModel,ArabaMarkaID,AracYakitTipi,ArabaAciklama,ArabaIletisim,ArabaSatici,ArabaFoto,ArabaUcret,ArabaOnay,MarkaID,MarkaIsim from TableCar inner join TableBrand on TableCar.ArabaMarkaID=TableBrand.MarkaID where ArabaOnay=@pcon", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();


            commandList.Parameters.AddWithValue("@pcon", true);

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();
            dr.Close();

        }

        
    }
}