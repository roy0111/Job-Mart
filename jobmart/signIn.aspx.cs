using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Linq;
using System.Data.SqlClient;
using System.Configuration;


public partial class signIn : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] != null && Session["userMail"]!=null)
        {
            if (Session["userType"].ToString() == "Company" ) {
                Response.Redirect("Company/profile.aspx");
            }
            else if (Session["userType"].ToString() == "Applicant")
            {
                Response.Redirect("User/Profile.aspx");
            }
            else if (Session["userType"].ToString() == "Admin")
            {
                Response.Redirect("Admin/profile.aspx");
            }
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        bool flag = true;

        if (TextBox1.Text.Length < 4 || TextBox1.Text.Length > 49)
        {
            flag = false;
            Label1.Text = "!!! email length 4-49 charecter ";
        }
        else
        {

            Label1.Text = " ";
        }

        if (TextBox2.Text.Length < 8 || TextBox2.Text.Length > 35)
        {
            flag = false;
            Label2.Text = "!!! password length 8-32 charecter ";
        }

        else
        {

            Label2.Text = " ";
        }

        if (flag == true)
        {
            try
            {

                DataClassesDataContext dbCon = new DataClassesDataContext();

                string inputMail = TextBox1.Text;
                string inputPassword = TextBox2.Text;
                //Label2.Text = inputPassword;
                string userType = DropDownList1.Text;

                //   Response.Write("<script>alert(' !!!" +userNo.Count() + ". Try Later.');</script>");
              var user = from usr in dbCon.loginDatas where usr.userMail == inputMail
                         select usr;

                if (user.Count()==1) {
                    foreach(loginData usr in user)
                    {
                        if (usr.userPassword!=inputPassword)
                        {
                            Label2.Text = "password not matched";
                        }
                        else if(usr.activity =="n")
                        {
                            Response.Write("<script>alert(' !!! >" + inputMail + "< account is deactivated or blocked.');</script>");

                        }
                        else if(usr.userPassword==inputPassword && usr.activity=="y" && usr.usertype==userType){
                            Session["userType"] = userType;
                            Session["userId"] = usr.idNo;
                            Session["userMail"] = usr.userMail;
                            if (usr.usertype== "Company")
                            {
                                Response.Redirect("Company/profile.aspx");
                            }
                            else if (usr.usertype == "Applicant")
                            {
                                Response.Redirect("User/Profile.aspx");
                            }
                            else
                            {
                               Session["userMail"] = Session["userId"] = Session["userType"] = null;
                                Session.Clear();
                                Response.Write("<script>alert(' !!!  Try Later.);</script>");

                            }
                        }
                        else{
                            Label2.Text = "!!! Password not Matched. ";
                        }
                    }
                }
                else
                {
                    Label1.Text = "Usermail does not match";
                }
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' !!!" + ex.Message + ". Try Later.');</script>");

            }
        }


    }

}