using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_ViewDetailsOfPost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataClassesDataContext db = new DataClassesDataContext();
        string PID = Convert.ToString(Request.QueryString["PID"]);
        var data = db.jobPostTbls.Single(post => post.postId==PID);
        Label1.Text = data.positionName ;
        Label2.Text =data.deadLine.ToString();
        Label3.Text =Convert.ToString( data.noOfVacancy);
        Label4.Text = data.jobTitle;

        Label5.Text = data.jobRequirment;
        Label6.Text = data.jobDescription;
        Label7.Text = data.jobNature;
        Label8.Text = data.jobLocation;
    
       // Label9.Text = data.;



    }
}