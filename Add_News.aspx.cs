﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site_Add_News : System.Web.UI.Page
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
     //   string str = "Data Source=ADEN-PC;Initial Catalog=DW;Integrated Security=True";
       // SqlConnection con = new SqlConnection(str);
        string qq = "INSERT into News(HeadLine,MainContent) values('" + TextBox2.Text + "','" + TextBox3.Text + "')";
        connect(qq);
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}