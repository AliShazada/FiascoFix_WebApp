using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site_getDonor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "Data Source=www.fiascofix.com;Initial Catalog=FiascoFix;User ID=shahzada;Password=fiasco123";
        SqlConnection con = new SqlConnection(str);
        string com = "select d.Donor_Name,d.Donor_Address,d.Donor_Email,d.Donor_Phone,d.Gender,d.DateOfBirth,d.Address_Lat,d.Address_Long,dd.Preffered_Donation_Location,dd.Donor_address,dd.DonationCategory,dd.DonationQuantity,dd.Donation_Lat,dd.Donation_Long from Donor as d,DonationDetail as dd where d.Donor_ID=dd.Donor_ID AND dd.Donor_address='"+ DropDownList1.SelectedItem.Value+"'";
        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        DataSet myDataSet = new DataSet();
        adpt.Fill(myDataSet,"DONOR");
        DataTable myDataTable = myDataSet.Tables[0];
        DataRow tempRow = null;

        // int aa = 0;

        foreach (DataRow tempRow_Variable in myDataTable.Rows)
        {
            tempRow = tempRow_Variable;

            Label1.Text = tempRow["Donor_Name"].ToString();
            Label2.Text = tempRow["Donor_Address"].ToString();
            Label3.Text = tempRow["Donor_Email"].ToString();
            Label4.Text = tempRow["Donor_Phone"].ToString();
            Label5.Text = tempRow["Gender"].ToString();
            Label6.Text = tempRow["DateOfBirth"].ToString();
            Label7.Text = tempRow["Address_Lat"].ToString();
            Label8.Text = tempRow["Address_Long"].ToString();
            Label9.Text = tempRow["Preffered_Donation_Location"].ToString();
            Label10.Text = tempRow["Donor_address"].ToString();
            Label11.Text = tempRow["DonationCategory"].ToString();
            Label12.Text = tempRow["DonationQuantity"].ToString();
            Label13.Text = tempRow["Donation_Lat"].ToString();
            Label14.Text = tempRow["Donation_Long"].ToString();
           

        }

    }
}