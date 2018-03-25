using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_adminSignUp : System.Web.UI.Page
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
                Response.Redirect("profile.aspx");
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        bool flag = true;
        if (TextBox1.Text.Length < 8 || TextBox1.Text.Length > 31)
        {
            flag = false;
            Label1.Text = "!!! email length 8-32 charecter ";
        }
        else
        {

            Label1.Text = " ";
        }

        if (TextBox2.Text.Length < 8 || TextBox2.Text.Length > 31)
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

                DataClassesDataContext dbCon;
                dbCon = new DataClassesDataContext();

                string inputMail = TextBox1.Text;
                string inputPassword = TextBox2.Text;
                //Label2.Text = inputPassword;
                string userType = "Admin";

                //   Response.Write("<script>alert(' !!!" +userNo.Count() + ". Try Later.');</script>");
                var user = from usr in dbCon.loginDatas
                           where usr.userMail == inputMail
                           select usr;

                if (user.Count() == 1)
                {
                    foreach (loginData usr in user)
                    {
                        if (usr.userPassword != inputPassword)
                        {
                            Label2.Text = "password not matched";
                        }
                        else if (usr.userPassword == inputPassword && usr.activity == "n" && usr.usertype == userType)
                        {
                            Response.Write("<script>alert(' !!! >" + inputMail + "< account is deactivated or blocked.');</script>");

                        }
                        else if (usr.userPassword == inputPassword && usr.activity == "y" && usr.usertype == userType)
                        {
                            Session["userType"] = userType;
                            Session["userId"] = usr.idNo;
                            Session["userMail"] = usr.userMail;
                            if (usr.usertype == "Admin")
                            {
                                Response.Redirect("profile.aspx");
                            }
                            else
                            {
                                Session["userMail"] = Session["userId"] = Session["userType"] = null;
                                Session.Clear();
                                Response.Write("<script>alert(' !!!  Try Later.);</script>");

                            }
                        }
                        else
                        {
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