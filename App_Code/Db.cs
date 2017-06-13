using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Db
/// </summary>
public class Db
{
	public Db()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int connect(string query)
    {
        SqlConnection con = new SqlConnection();


        con.ConnectionString = "Data Source=www.fiascofix.com;Initial Catalog=FiascoFix;User ID=shahzada;Password=fiasco123";
        con.Open();        

        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
              
        return 0;
    }
}