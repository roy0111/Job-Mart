using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signUP_individualSignUpForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
        if (TextBox6.Text.Length < 2 || TextBox6.Text.Length > 12)
        {
            flag = false;
            Label7.Text = "!!! Phone no length should be (3-12)";
        }
        else
        {
            Label7.Text = "";

        }
        if (TextBox9.Text.Length < 6 || TextBox9.Text.Length > 49)
        {
            flag = false;
            Label9.Text = "!!! Institute length should be (6-49)";
        }
        else
        {
            Label9.Text = "";

        }
        if (TextBox7.Text.Length < 8 || TextBox7.Text.Length > 35)
        {
            flag = false;
            Label11.Text = "!!! Password length should be (8-35)";
        }
        else
        {
            Label11.Text = "";

        }
        if (TextBox7.Text != TextBox8.Text)
        {
            flag = false;
            Label12.Text = "!!! Password not Matched";
        }
        else
        {
            Label12.Text = "";

        }
        if (CheckBox1.Checked == false)
        {
            flag = false;
            Label13.Text = "!!! check the checkbox";
        }
        else
        {
            Label13.Text = "";
        }

        if (flag == true)
        {
            String inputMail = TextBox2.Text;
            DataClassesDataContext dbCon = new DataClassesDataContext();
            var user = from usr in dbCon.loginDatas
                       where usr.userMail == inputMail
                       select usr;
            if (user.Count() != 0)
            {
                Response.Write("<script>alert(' !!! >" + inputMail + "< mail is already in used.');</script>");
            }
            else if (user.Count() == 0)
            {
                string userType = "Applicant";
                string activity = "y";
                string reg_date = DateTime.Now.ToString("yyyy-MM-dd");
                string idNumber = "AP" + DateTime.Now.ToString("yyyyMMddHHmmss");
                string inputName = TextBox1.Text;
                string inputAddress = TextBox3.Text;
                
                string DateOfBirth = TextBox5.Text;
                string gender = RadioButtonList1.SelectedItem.Text;
                string division = DropDownList1.Text;
                string phoneNumber = TextBox6.Text;
                string degree = DropDownList2.Text;
                string institute = TextBox9.Text;
                string subject = DropDownList3.Text;
                string userPasword = TextBox7.Text;
                try
                {
                    DataClassesDataContext dbConnec = new DataClassesDataContext();
                    loginData obj = new loginData();
                    obj.idNo = idNumber;
                    obj.activity = activity;
                    obj.reg_date = Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd"));
                    obj.userPassword = userPasword;
                    obj.userMail = inputMail;
                    obj.usertype = userType;

                    userData userData1 = new userData();
                    userData1.userId = idNumber;
                    userData1.fullName = inputName;
                    userData1.degree = degree;
                    userData1.addressOfUser = inputAddress;
                    userData1.contactNo = phoneNumber;
                    userData1.gender = gender;
                    userData1.institute = institute;
                    userData1.subjectGrad = subject;
                    userData1.division = division;
                    userData1.dob = Convert.ToDateTime(DateOfBirth.ToString());
                 

                    dbCon.loginDatas.InsertOnSubmit(obj);
                    dbCon.userDatas.InsertOnSubmit(userData1);
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