using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site_DeleteDisaster : System.Web.UI.Page
{
    public static SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static int connect(string query)//string query)
    {
        SqlConnection con = new SqlConnection();


        con.ConnectionString = "Data Source=www.fiascofix.com;Initial Catalog=FiascoFix;User ID=shahzada;Password=fiasco123";
        con.Open();

        //   string query = "insert into Table_Load(Tehsil_Name,Town_Name) values('" + ali + "','" + ali2 + "')";

        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();


        con.Close();
        // .DataSource = datat;
        return 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string qq = "DELETE FROM Diasater where Name='" + DropDownList2.SelectedItem.Text + "'";
        connect(qq);


    }
}