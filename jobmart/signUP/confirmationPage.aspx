<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmationPage.aspx.cs" Inherits="signUP_confirmationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Congratulation</title>
    <link href="../design/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="../design/bootstrap/bootstrapSlate.min..css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

</head>
<body >
    <form id="form1" runat="server">
    <div class="col-2" style="padding-top:5%;padding-left:5%">
        
        <asp:LinkButton CssClass="btn btn-outline-danger" ID="LinkButton1" runat="server" PostBackUrl="~/homepage/home.aspx">Home</asp:LinkButton>

    </div>
        <br /><br />
      <div class="col-12">

            <div style="padding-left:20%; padding-right:20%; width:100%"  class="card text-white bg-dark">
                <div class="card-header bg-light m-2"><h2 style="color:black;" class="auto-style1">Congratulations </h2>
                    
                </div>
                <div class="card-body bg-success m-2">
                  
                    <h1 style="text-align:center"><i class="fa fa-thumbs-up fa-3x"></i></h1>
                    <h4 style="text-align:center"> Completed Registration Successfully. Very soon your information will verify. Thank you.</h4>
                </div>
            </div>

      </div>
      <div class="col-2"></div>
    </form>
</body>
</html>
