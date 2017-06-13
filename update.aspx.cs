using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Text;

public partial class site_Default2 : System.Web.UI.Page
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
     return 0;
    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {

        string query = "INSERT into DisasterSituation(Disaster_ID,Total_Population,Injured,Deaths,TotalAreaAffected,Weather,Requirements,Quantity) values((select Disaster_ID from Disaster where DisasterName='" + TextBox1.Text + "'),'" + TextBox5.Text + "','" + TextBox6.Text + "','"+TextBox7.Text+"','" + TextBox11.Text + "','"+TextBox13.Text+"','" + TextBox9.Text + "','" + TextBox10.Text + "')";
            connect(query);
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
      
        string url = "http://maps.google.com/maps/api/geocode/xml?address=" + TextBox3.Text + "&sensor=false";
        WebRequest request = WebRequest.Create(url);
        using (WebResponse response = (HttpWebResponse)request.GetResponse())
        {
            using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
            {
                DataSet dsResult = new DataSet();
                dsResult.ReadXml(reader);
                DataTable dtCoordinates = new DataTable();
                dtCoordinates.Columns.AddRange(new DataColumn[4] { new DataColumn("Id", typeof(int)),
                        new DataColumn("Address", typeof(string)),
                        new DataColumn("Latitude",typeof(string)),
                        new DataColumn("Longitude",typeof(string)) });
                foreach (DataRow row in dsResult.Tables["result"].Rows)
                {
                    string geometry_id = dsResult.Tables["geometry"].Select("result_id = " + row["result_id"].ToString())[0]["geometry_id"].ToString();
                    DataRow location = dsResult.Tables["location"].Select("geometry_id = " + geometry_id)[0];
                    dtCoordinates.Rows.Add(row["result_id"], row["formatted_address"], location["lat"], location["lng"]);


                    HiddenField1.Value = location["lat"].ToString();
                    HiddenField2.Value = location["lng"].ToString();
                    break;
                }

            }
        }

        string query = "INSERT into Disaster(DisasterName,DisasterLocation,DisasterType,DisasterMagnitude,DisasterOrigin,Disaster_Lat,Disaster_Long,DisasterDescription) values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox12.Text + "','"+ HiddenField1.Value +"','"+HiddenField2.Value+"','" + TextBox8.Text + "')";
        connect(query);
    }
}