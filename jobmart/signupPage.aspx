<%@ Page Title="" Language="C#" MasterPageFile="~/signUP/signupMasterPage.master" AutoEventWireup="true" CodeFile="signupPage.aspx.cs" Inherits="signupPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle1 {
        }
        .auto-style9 {
            font-size: xx-large;
            width: 698px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 87px;
        }
    .auto-style14 {
        text-align: center;
        width: 698px;
        color: #FFFFFF;
        font-size: large;
    }
        .auto-style19 {
            width: 110%;
            height: 248px;
        }
        .auto-style20 {
            -webkit-box-flex: 1;
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
    <div class="auto-style11">
        <table class="auto-style19">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Are you hiring or you are finding a job?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="3">
                    <br />
                    
                    <asp:DropDownList ID="DropDownList1" CssClass="custom-select" runat="server" BackColor="#CCFF99" Font-Names="Arial" Font-Size="Large" ForeColor="#000066" Height="50px" Width="167px"  ToolTip="select which type of user">
                        <asp:ListItem>Applicant</asp:ListItem>
                        <asp:ListItem>Company</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Black" Height="55px" OnClick="Button1_Click" Text="+" Width="108px" CssClass="btn btn-success" Font-Bold="True" ToolTip="enter" />
                    <br />
                      
                </td>
            </tr>
        </table>
        <div>
        <br />
        </div>
    </div>
    <p>
    </p>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <link rel="stylesheet" href="design/bootstrap/bootstrap.css">
    
    <div class="card text-white bg-success mb-3" style="max-width: 20rem; left: 0px; top: 0px; height: 200px;"/>
            <div class="card-header"><h4 class="text-center"> already have an account then sign in here.</h4></div>
          <div class="auto-style20">
            
              <br />
            
       <a href="signIn.aspx" Class="btn btn-warning" style="Width:112px; font-size:large;"><span class="glyphicon glyphicon-home"></span>
                         <div class="text-center">
                          Sign In 
              </div>
              </a> 
              

              <br />
              <br />
            
           
         </div>
  </asp:Content>



