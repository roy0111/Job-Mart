<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signIn.aspx.cs" Inherits="signIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="design/bootstrap/bootstrap.css"/>
    <link href="design/bootstrap/bootstrapSlate.min..css" rel="stylesheet" />
 <title>Sign In</title>
    <style type="text/css">
        .auto-style2 {
            color: #fff;
            height: 625px;
            text-align: center;
            background-color: #62c462;
            width: 984px;
        }
        .auto-style5 {
            width: 696px;
        }
        .auto-style6 {
            width: 984px;
        }
        .auto-style7 {
            text-align: center;
            height: 74px;
            color: #000000;
        }
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style9 {
            height: 933px;
            width: 1420px;
            margin-right: 0px;
        }
        .auto-style10 {
            width: 696px;
            height: 115px;
        }
        .auto-style11 {
            width: 984px;
            height: 115px;
        }
        .auto-style12 {
            height: 115px;
            width: 171px;
        }
        .auto-style13 {
            width: 171px;
        }
        .auto-style14 {
            text-align: right;
            width: 282px;
            height: 95px;
            color: #000000;
        }
        .auto-style17 {
            color: #000000;
        }
        .auto-style18 {
            font-size: large;
        }
        .auto-style20 {
            width: 696px;
            height: 628px;
        }
        .auto-style21 {
            width: 984px;
            height: 628px;
        }
        .auto-style22 {
            width: 171px;
            height: 628px;
        }
        .auto-style23 {
            color: #FF0000;
        }
        .auto-style24 {
            height: 95px;
            text-align: left;
        }
        .auto-style25 {
            font-weight: normal;
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">


        <table class="auto-style9"  >
            <tr>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1"  runat="server" Height="76px" ImageUrl="~/logojobMart2x.PNG" PostBackUrl="~/homepage/home.aspx" Width="89px"  />
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;

                    &nbsp;<span class="auto-style8"><em><asp:Button ID="Button4" runat="server" CssClass="btn btn-danger" Height="62px" Text="Admin" Width="122px" Font-Bold="True" Font-Size="Large" PostBackUrl="~/Admin/adminSignin.aspx" style="margin-left: 0" />
            
           
                                    </em></span></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">
                    <div class="auto-style2">
                        <table class="table table-hover" style="height: 458px; width: 101%;" >
                            <tr class="table-success">
                                <td class="auto-style7" colspan="2">
                                    <br />
                                    <br />
                               
                                    <span class="auto-style8"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job Net&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em><br />
                                    <span class="text-white">Sign In<br />
                                    </span>
                                    </span></td>
                            </tr>
                            <tr class="table-dark">
                                <td class="text-center" colspan="2">
                                    <br class="auto-style17" />
                    <asp:DropDownList ID="DropDownList1" CssClass="custom-select" runat="server" BackColor="#CCFF99" Font-Names="Arial" Font-Size="Large" ForeColor="#000066" Height="50px" Width="167px"  ToolTip="select which type of user">
                        <asp:ListItem>Applicant</asp:ListItem>
                        <asp:ListItem>Company</asp:ListItem>
                    </asp:DropDownList>
                                    <br class="auto-style17" />
                                </td>
                            </tr>
                            <tr class="table-light">
                                <td class="auto-style14">
                                    <br class="auto-style18" />
                                    <span class="auto-style18">Usermail<br />
                                    </span></td>
                                <td class="auto-style24">
                                    <br class="auto-style17" />
                                    <span class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                    <asp:TextBox ID="TextBox1"  runat="server" BackColor="#FFFFCC" Font-Italic="True" Font-Names="Lucida Sans" ForeColor="Black" Height="40px" MaxLength="50" Width="310px" TextMode="Email"></asp:TextBox>
                                    <span class="auto-style17">&nbsp;&nbsp; </span>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style23"></asp:Label>
                                </td>


                            </tr>
                            <tr class="table-dark">
                                <td class="auto-style14">
                                    <br class="auto-style18" />
                                    <span class="auto-style18">Password<br />
                                    </span></td>
                                <td class="auto-style24">
                                    <br class="auto-style17" />
                                    <span class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFFCC" ForeColor="#0066FF" Height="40px" MaxLength="36" TextMode="Password" Width="310px"></asp:TextBox>
                                    <span class="auto-style17">&nbsp;&nbsp; </span>
                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style23"></asp:Label>
                                </td>
                            </tr>
                            <tr class="table-light">
                                <td class="text-center" colspan="2">
                                    <br class="auto-style17" />
            
           
              <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Height="54px" Text="log in" Width="112px" Font-Bold="True" Font-Size="Large" OnClick="Button2_Click" />
            
           
                                    <br class="auto-style17" />
                                    <br class="auto-style17" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td class="auto-style22">

                    &nbsp;</td>
            </tr>
            <tr class="auto-style17">
                <td class="auto-style5">&nbsp;</td>
                
                <td class="auto-style6">
                    <br /><br /><br /><br />
                    <div class="card text-white bg-success mb-3" style="max-width: 98%; left: 0px; top: 0px; height: 122px;">
                        <div class="card-header" style="max-height: 70%;">
                            <h2 class="text-left">Create An Account.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" CssClass="btn btn-warning" Font-Bold="True" Font-Size="Large" Height="62px" PostBackUrl="~/signupPage.aspx" Text="Sign Up" Width="137px" ForeColor="White" />
                            </h2>
                        </div>
                        <h5 class="auto-style25">  New to job Mart?  Create an account now.</h5>
                    </div>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>


    </form>
</body>
</html>
