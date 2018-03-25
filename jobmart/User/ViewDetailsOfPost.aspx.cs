using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ViewDetailsOfPost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        string PID = Convert.ToString(Request.QueryString["PID"]);
        var postdata = db.jobPostTbls.Single(post => post.postId == PID);

        var companyData = db.companyDataTbls.Join(db.companyPostRefs, (dta => dta.companyId),
            (cdta => cdta.companyId),
            ((cdta, dta) => new { companyDataTbl=cdta,companyPostRef=dta})).Where(p=>p.companyPostRef.postId==PID);

        var a=companyData.First();

        Label1.Text = a.companyDataTbl.companyName;

        Label2.Text = a.companyDataTbl.companyAddress;
        Label3.Text =Convert.ToString( postdata.noOfVacancy);
        Label4.Text = postdata.jobTitle;
        Label5.Text = postdata.positionName;

        Label6.Text = postdata.jobDescription;
        Label7.Text = postdata.jobNature;

        Label9.Text = postdata.jobRequirment;
        Label10.Text = postdata.salaryOthers;

        Label8.Text = postdata.deadLine.ToString();
        Label13.Text = a.companyDataTbl.contactNo;

    }
}