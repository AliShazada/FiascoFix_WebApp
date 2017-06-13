using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ff_site_reportform : System.Web.UI.Page
{
    public static SqlConnection con;
    Db obj = new Db();
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
        string address;
        string quantity;
        User obj = new User();
        string user = obj.get_user();

        if(DropDownList1.SelectedItem.Text=="Islamabad")
        {
            address = "Houseno. " + TextBox3.Text + ", Streetno. " + TextBox4.Text + ", Sector " + TextBox6.Text + ", " + DropDownList1.SelectedItem.Text + ", " + TextBox13.Text;
                 
        }
        else 
        {
            address = TextBox5.Text;
        }

        if (DropDownList4.SelectedItem.Text == "Cash")
        {
            quantity = TextBox9.Text;
        }
        else if (DropDownList4.SelectedItem.Text == "Other")
        {
            quantity = TextBox12.Text;
        }
        else
        {
            quantity = TextBox10.Text;
        }
        string query = "INSERT into DonationDetail(Disaster_ID,Donor_ID,Preffered_Donation_Location,Donor_address,DonationCategory,DonationQuantity,DonationStatus) values((select Disaster_ID from Disaster where DisasterName='" + DropDownList2.SelectedItem.Text + "'),(select Donor_ID from Donor where UserName='" + user + "'),'" + DropDownList3.SelectedItem.Text + "','" + address + "','" + DropDownList4.SelectedItem.Text + "','" + quantity + "','Uncollected')";
        connect(query);
   //     Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //string qq = "INSERT into Donation(First_name,Last_name,Gender,House_no,Street_no,City,Country,Email,Contact_no,Donation_category) values('" + TextBox1.Text + "' ,'" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList2.SelectedItem.Text + "')";
        ////  connect(qq);

        //// string qq = "INSERT into Donation(First_name,Last_name) values('Ali','Ahmad')";
        //connect(qq);

        //TextBox3.Text = "";
        //TextBox4.Text = "";
        //TextBox5.Text = "";
        //TextBox6.Text = "";
        //TextBox7.Text = "";
        //TextBox8.Text = "";
        
    }
}