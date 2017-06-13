using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt;
    DataTable dt1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            dt = this.GetData("select * from Disaster");
            rptMarkers.DataSource = dt;
            rptMarkers.DataBind();

            dt1 = this.GetData("select * from News");
            n_new.DataSource = dt1;
            n_new.DataBind();
            
        }
    }
    private DataTable GetData(string query)
    {
        string conString = "Data Source=www.fiascofix.com;Initial Catalog=FiascoFix;User ID=shahzada;Password=fiasco123";
        SqlCommand cmd = new SqlCommand(query);
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;

                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    return dt;
                }
            }
        }
    }
}