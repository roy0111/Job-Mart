using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signUP_companySignUpForm : System.Web.UI.Page
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
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        bool flag = true;
        if (TextBox1.Text.Length < 4 || TextBox1.Text.Length > 31)
        {
            flag = false;
            Label1.Text = "!!! Name length should be (4-31)";
        }
        else
        {
            Label1.Text = "";

        }
        if (TextBox2.Text.Length < 6 || TextBox1.Text.Length > 49)
        {
            flag = false;
            Label2.Text = "!!! Mail length should be (6-49)";
        }
        else
        {
            Label2.Text = "";

        }
        if (TextBox3.Text.Length < 6 || TextBox3.Text.Length > 49)
        {
            flag = false;
            Label3.Text = "!!! Address length should be (6-49)";
        }
        else
        {
            Label3.Text = "";

        }
        if (TextBox4.Text.Length < 6 || TextBox4.Text.Length > 49)
        {
            flag = false;
            Label4.Text = "!!! web url length should be (6-49)";
        }
        else
        {
            Label4.Text = "";

        }
        if (TextBox6.Text.Length < 2 || TextBox6.Text.Length > 12)
        {
            flag = false;
            Label7.Text = "!!! phone no length should be (3-12)";
        }
        else
        {
            Label7.Text = "";

        }

        if (TextBox7.Text.Length < 8 || TextBox7.Text.Length > 35)
        {
            flag = false;
            Label8.Text = "!!! Password length should be (8-35)";
        }
        else
        {
            Label8.Text = "";

        }
        if (TextBox7.Text != TextBox8.Text)
        {
            flag = false;
            Label9.Text = "!!! Password not Matched";
        }
        else
        {
            Label9.Text = "";

        }
        if (CheckBox1.Checked == false)
        {
            flag = false;
            Label10.Text = "!!! check the checkbox";
        }
        else
        {
            Label10.Text = "";
        }

        if (flag == true)
        {
            String inputMail = TextBox2.Text;
            DataClassesDataContext dbCon = new DataClassesDataContext();
            var user = from usr in dbCon.loginDatas
                       where usr.userMail == inputMail
                       select usr;
            if (user.Count()!=0)
            {
                Response.Write("<script>alert(' !!! >" + inputMail + "< mail is already in used.');</script>");
            }
            else if (user.Count()==0) {
                string userType = "Company";
                string activity = "n";
                string reg_date = DateTime.Now.ToString("yyyy-MM-dd");
                string idNumber = "CP" + DateTime.Now.ToString("yyyyMMddHHmmss");
                string inputCompanyName = TextBox1.Text;
                string inputAddress = TextBox3.Text;
                string inputCompanyWebSite = TextBox4.Text;
                string establishedDate = TextBox5.Text;
                string inputHq = DropDownList1.Text;
                string phoneNumber = TextBox6.Text;
                string userPasword = TextBox7.Text;

                try
                {
                    DataClassesDataContext dbConnec = new DataClassesDataContext();
                    loginData obj = new loginData();
                    obj.idNo = idNumber;
                    obj.activity = activity;
                    obj.reg_date =Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd"));
                    obj.userPassword = userPasword;
                    obj.userMail = inputMail;
                    obj.usertype = userType;

                    companyDataTbl companyData = new companyDataTbl();
                    companyData.companyId = idNumber;
                    companyData.companyName = inputCompanyName;
                    companyData.companyAddress = inputAddress;
                    companyData.companyWebSite = inputCompanyWebSite;
                    companyData.foundationOn = Convert.ToDateTime(establishedDate.ToString());
                    companyData.headQuater = inputHq;
                    companyData.contactNo = phoneNumber;

                    dbCon.loginDatas.InsertOnSubmit(obj);
                    dbCon.companyDataTbls.InsertOnSubmit(companyData);
                    dbCon.SubmitChanges();
                    Response.Redirect("confirmationPage.aspx");

                }
                catch (Exception)
                {

                    throw;
                }

            }
            else
            {
                Response.Write("<script>alert(' !!! Use Another Mail.');</script>");

            }
        }
    }
}