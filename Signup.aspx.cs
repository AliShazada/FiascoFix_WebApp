using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ff_site_Signup : System.Web.UI.Page
{
    public static SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  string qq = "INSERT into sample(id1,id2) values(12,67)";
        //  string qq = "INSERT into test(Name,Password) values('hdfj','hjdfh')";
        //SqlCommand cmd = con.CreateCommand();
        //cmd.CommandText = qq;


      //  connect(qq);
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
        string name;
        string address;
        string dob;

        name = TextBox1.Text +' ' + TextBox2.Text;
        if (DropDownList3.SelectedItem.Text == "Other")
        {
            address = "Houseno." + TextBox3.Text +", Streetno."+ TextBox4.Text+", " + TextBox5.Text+", " + TextBox6.Text;
        }
        else
        {
            address = "Houseno." + TextBox3.Text + ", Streetno." + TextBox4.Text + ", " + DropDownList3.SelectedItem.Text + "," + TextBox6.Text;
        }



        string url = "http://maps.google.com/maps/api/geocode/xml?address=" + address + "&sensor=false";
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


                    lat.Value = location["lat"].ToString();
                    lng.Value = location["lng"].ToString();
                    break;
                }

            }
        }



        dob = DropDownList4.SelectedItem.Text +'/'+ DropDownList5.SelectedItem.Text +'/'+TextBox4.Text;
        string qq = "INSERT into Donor(Donor_Name,Donor_Address,Donor_Email,Donor_Phone,Gender,CivilStatus,DateOfBirth,UserName,Password) values('" + name + "' ,'" + address + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + dob + "','" + TextBox9.Text + "','" + TextBox11.Text + "')";
       
        connect(qq);
        Response.Redirect("Welcome.aspx");


      
    }
}