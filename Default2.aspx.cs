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
        //Label1.Visible = false;

        if (TextBox1.Text == "admin" && TextBox2.Text == "fiasco123")
        {
            Response.Redirect("Admin_home.aspx");
        }

        else
        {
            string str = "Data Source=www.fiascofix.com;Initial Catalog=FiascoFix;User ID=shahzada;Password=fiasco123";
            SqlConnection con = new SqlConnection(str);
            string com = "Select UserName,Password from Donor";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataSet myDataSet = new DataSet();
            adpt.Fill(myDataSet, "Donor");
            DataTable myDataTable = myDataSet.Tables[0];
            DataRow tempRow = null;

            int chk=0;

            foreach (DataRow tempRow_Variable in myDataTable.Rows)
            {
                tempRow = tempRow_Variable;
                if (TextBox1.Text == tempRow["UserName"].ToString() && TextBox2.Text == tempRow["Password"].ToString())
                {
                    chk = 333;
                    User obj = new User();
                    obj.set_user(TextBox1.Text);
                    Session["username"] = TextBox1.Text;

                    break;
                   // 
                }

            }

            if (chk == 333)
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                Label1.Visible = true;
            }
        }



       
    }
   
}