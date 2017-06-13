using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site_Default2 : System.Web.UI.Page
{
    string user;
    protected void Page_Load(object sender, EventArgs e)
    {


    }
     protected void Button1_Click(object sender, EventArgs e)
    {
        //string str = "Data Source=ALIAHMADSHAZADA;Initial Catalog=FiascoFix;User ID=sa;Password=sa";
        //SqlConnection con = new SqlConnection(str);
        //string com = "Select UserName,Password from Donor";
        //SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //DataSet myDataSet = new DataSet();
        //adpt.Fill(myDataSet, "Donor");
        //DataTable myDataTable = myDataSet.Tables[0];
        //DataRow tempRow = null;

        //int chk;

        //foreach (DataRow tempRow_Variable in myDataTable.Rows)
        //{
        //    tempRow = tempRow_Variable;
        //    if(TextBox1.Text == tempRow["UserName"].ToString() && TextBox2.Text==tempRow["Password"].ToString())
        //    {
        //        chk = 333;
        //        User obj = new User();
        //        obj.set_user(TextBox1.Text);
        //        Session["username"] = TextBox1.Text;
        //        Response.Redirect("home.aspx");
        //    }

        //}
    }
   
}