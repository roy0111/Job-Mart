using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_jobPost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();

        string companyId = Session["userId"].ToString();

        var data = from pD in db.jobPostTbls
                   join pR in db.companyPostRefs on pD.postId equals pR.postId
                   where pR.activity=="y" && pR.companyId == companyId
                   orderby pR.postingTime descending 
                   select new { pD.jobTitle,pD.positionName,pD.deadLine,
                   pD.jobLocation,pD.postId,pR.postingTime,pD.jobRequirment};

        Repeater1.DataSource = data.ToList();
        Repeater1.DataBind();
    }
    
}