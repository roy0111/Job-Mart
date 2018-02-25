using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signupPage : System.Web.UI.Page
{




    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Company")
        {
            Response.Redirect("signup/companySignUpForn.aspx");
        }
        else
        {
            Response.Redirect("signup/individualSignUpForm.aspx");
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signIn.aspx");
    }
}