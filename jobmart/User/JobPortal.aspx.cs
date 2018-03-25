using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_JobPortal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();

        //string companyId = Session["userId"].ToString();

        var data = from pD in db.jobPostTbls
                   join pR in db.companyPostRefs on pD.postId equals pR.postId
                   join companyData in db.companyDataTbls on pR.companyId equals companyData.companyId
                   where pR.activity == "y" 
                   orderby pR.postingTime descending
                   select new
                   {   companyData.companyName,
                       pD.jobTitle,
                       pD.deadLine,
                       pD.jobLocation,
                       pD.postId,
                     pD.positionName,
                       pD.jobRequirment
                   };

        Repeater1.DataSource = data.ToList();
        Repeater1.DataBind();

    }
}