<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminSignin.aspx.cs" Inherits="Admin_adminSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Sign In</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 638px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
            color: #000000;
            width: 236px;
            font-size: x-large;
        }
        .auto-style7 {
            width: 214px;
        }
        .auto-style8 {
            text-align: right;
            width: 236px;
        }
        .auto-style10 {
            font-size: xx-large;
            color: #000000;
        }
        .auto-style12 {
            height: 180px;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style14 {
            width: 1259px;
        }
        .auto-style15 {
            width: 247px;
        }
        .auto-style16 {
            width: 247px;
            height: 161px;
        }
        .auto-style17 {
            width: 1259px;
            height: 161px;
        }
        .auto-style18 {
            height: 161px;
        }
    </style>
        <link rel="stylesheet" href="../design/bootstrap/bootstrap.css"/>
</head>
<body style="color: #000000">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style17">
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1"  runat="server" Height="76px" ImageUrl="~/logojobMart2x.PNG" PostBackUrl="~/homepage/home.aspx" Width="89px" CssClass="btn btn-danger" />
                        <br />
                    </td>
                    <td class="auto-style18">
                            &nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" CssClass="btn btn-warning" Font-Bold="True" Font-Size="Large" Height="62px" PostBackUrl="~/signupPage.aspx" Text="Sign Up" Width="137px" ForeColor="White" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" colspan="2" rowspan="2">
                        <table class="table table-hover" style="height: 370px; width: 89%;">
                         

                          

                            <tr class="table-success">
                              <th scope="row" class="auto-style12" colspan="4">
                                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span class="auto-style10"><em>Job Net&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style13">Admin Sign In&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </th>
                            </tr>
                             
                              
                              <tr class="table-dark">
                              <th scope="row" class="auto-style7">&nbsp;</th>
                              <td class="auto-style6">Usermail&nbsp;&nbsp;&nbsp;&nbsp; </td>
                              <td class="text-left">
                                  <asp:TextBox ID="TextBox1"  runat="server" class="form-control"  Font-Italic="True" Font-Names="Lucida Sans" Height="40px" Width="310px" CssClass="border-success" TextMode="Email" ></asp:TextBox>
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                              <td>&nbsp; </td>
                                 
                            </tr>
                            
                              <tr class="table-dark">
                              <th scope="row" class="auto-style7">&nbsp;</th>
                              <td class="auto-style6">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                              <td class="text-left"><asp:TextBox ID="TextBox2" class="form-control"  runat="server" Height="40px" MaxLength="32" TextMode="Password" Width="310px" CssClass="border-success" ForeColor="Red"></asp:TextBox>
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                              <td>&nbsp;</td>
                            </tr>

                              <tr class="table-light">
                              <th scope="row" class="auto-style7">&nbsp;</th>
                              <td class="auto-style8">&nbsp;</td>
                              <td>
            
           
              <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Height="54px" Text="log in" Width="112px" Font-Bold="True" Font-Size="Large" OnClick="Button2_Click" />
            
           
                                    </td>
                              <td>&nbsp;</td>
                            </tr>

                       
                        </table> 
                        
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
