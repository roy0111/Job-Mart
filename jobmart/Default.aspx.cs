using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sqlcmd2= "";
        SqlConnection connection2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand command2;
        command2 = new SqlCommand(sqlcmd2, connection2);
      
        //SqlDataReader dr;
        string mail2 = "'" + TextBox1.Text + "'";
        sqlcmd2 = " insert into loginData(userMail,userPassword,userType,reg_date) values(" + mail2+ ",'"+TextBox4.Text+"','Company','"+DateTime.Now.ToString("yyyy/MM/dd")+"')";
        command2 = new SqlCommand(sqlcmd2, connection2);
        connection2.Open();

        command2.ExecuteNonQuery();


    }
}