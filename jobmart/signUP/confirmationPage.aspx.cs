using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signUP_confirmationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] != null && Session["userMail"] != null)
        {
            if (Session["userType"].ToString() == "Company")
            {
                Response.Redirect("~/Company/profile.aspx");
            }
            else if (Session["userType"].ToString() == "Applicant")
            {
                Response.Redirect("~/User/Profile.aspx");
            }
            else if (Session["userType"].ToString() == "Admin")
            {
                Response.Redirect("~/Admin/profile.aspx");
            }
            else
            {
                Response.Redirect("~/signIn.aspx");
            }
        }
    }
}