using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ArabaSatisSitesi.Classes
{
    public class SqlConnectionClass
    {
       public static SqlConnection connection=new SqlConnection("Data Source=LAPTOP-3QNEVHJE\\SQLEXPRESS;Initial Catalog=ArabaSatis;Integrated Security=True");
        public static void CheckConnection()
        {
            if (connection.State==System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {

            }
        }
        
    }
}