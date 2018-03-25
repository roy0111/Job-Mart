using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_addNewjobForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string companyId = Session["userId"].ToString();

            DataClassesDataContext db = new DataClassesDataContext();

            jobPostTbl obj2 = new jobPostTbl();
            obj2.postId= "JP" + DateTime.Now.ToString("yyyyMMddHHmmss");
            obj2.jobTitle = TextBox1.Text;
            obj2.positionName = DropDownList1.SelectedItem.Text;
            obj2.deadLine = Convert.ToDateTime(TextBox8.Text);
            obj2.noOfVacancy= Convert.ToInt16(TextBox2.Text);
            obj2.jobDescription= TextBox3.Text;
            obj2.jobNature= TextBox5.Text;
            obj2.jobRequirment= TextBox4.Text;
            obj2.salaryOthers = TextBox7.Text;
            obj2.jobLocation = TextBox6.Text;

            companyPostRef obj1 = new companyPostRef();
            obj1.postId = obj2.postId;
            obj1.companyId = companyId;
            obj1.postingTime = DateTime.Now;
            obj1.activity = "y";

            db.companyPostRefs.InsertOnSubmit(obj1);
            db.jobPostTbls.InsertOnSubmit(obj2);
            db.SubmitChanges();
            Response.Redirect("jobPost.aspx");

        }
        catch (Exception)
        {

            throw;
        }


    }
}