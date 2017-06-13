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

public partial class ff_site_reportform : System.Web.UI.Page
{
    string username;
    public static SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        username = (string)(Session["username"]);
        if (username == null)
        {
            Response.Redirect("Default2.aspx");
        }

        string str = "Data Source=www.fiascofix.com;Initial Catalog=FiascoFix;User ID=shahzada;Password=fiasco123";
        SqlConnection con = new SqlConnection(str);
        string com = "Select * from Donor";
        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        DataSet myDataSet = new DataSet();
        adpt.Fill(myDataSet, "Donor");
        DataTable myDataTable = myDataSet.Tables[0];
        DataRow tempRow = null;

        // int aa = 0;

        foreach (DataRow tempRow_Variable in myDataTable.Rows)
        {
            tempRow = tempRow_Variable;

            ////////////// Pest Population Missing Values........//////////////////////////////
            string user = tempRow["UserName"].ToString();
            if (user == username)
            {
                userName.Text = tempRow["Donor_Name"].ToString();
                Phone.Text = tempRow["Donor_Phone"].ToString();
                Email.Text = tempRow["Donor_Email"].ToString();
                Address.Text = tempRow["Donor_Address"].ToString();
                //this.location.href = page1;
                //  Response.Write("Username is already in use.\nPlease try another.");
                //aa = 555;
                break;
            }
        }

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string address;
        string quantity;
        string category;
        string lat=null;
        string lng=null;

        if (DropDownList4.SelectedItem.Text != "-City-")
        {
            if (DropDownList4.SelectedItem.Text == "Islamabad")
            {
                address = "Houseno. " + TextBox5.Text + ", Streetno. " + TextBox7.Text + ", Sector " + DropDownList5.SelectedItem.Text + ", " + DropDownList4.SelectedItem.Text + ", Pakistan";

            }
            else
            {
                address = TextBox8.Text;
            }
        }
        else
            address = Address.Text;
        if (DropDownList3.SelectedItem.Text != "-Category-")
        {
            if (DropDownList3.SelectedItem.Text == "Cash")
            {
                category = DropDownList3.SelectedItem.Text;
                quantity = TextBox1.Text;
            }
            else if (DropDownList4.SelectedItem.Text == "Other")
            {
                category = TextBox3.Text;
                quantity = TextBox4.Text;
            }
            else
            {
                category = DropDownList3.SelectedItem.Text;
                quantity = TextBox2.Text;
            }
        }
        else
        {
            category = null;
            quantity = null;
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


                    lat = location["lat"].ToString();
                    lng = location["lng"].ToString();
                    break;
                }

            }
        }

        string query = "INSERT into DonationDetail(Disaster_ID,Donor_ID,Preffered_Donation_Location,Donor_address,DonationCategory,DonationQuantity,DonationStatus,Donation_Lat,Donation_Long) values((select Disaster_ID from Disaster where DisasterName='" + DropDownList2.SelectedItem.Text + "'),(select Donor_ID from Donor where UserName='" + username + "'),'" + DropDownList1.SelectedItem.Text + "','" + address + "','" + category + "','" + quantity + "','Uncollected','" + lat + "','" + lng + "')";
        connect(query);
        //     Response.Redirect("Default.aspx");
    }
   
}