<%@ Page Title="" Language="C#" MasterPageFile="~/signUP/signupMasterPage.master" AutoEventWireup="true" CodeFile="signupPage.aspx.cs" Inherits="signupPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle1 {
        }
        .auto-style9 {
            font-size: xx-large;
            width: 698px;
        }
        .auto-style10 {
            font-size: x-large;
            text-align: center;
            width: 698px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 87px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="auto-style11">
        <table class="auto-style2">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">Are your company hiring or you find a job?</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="3">
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCFF99" Font-Names="Arial" Font-Size="Large" ForeColor="#000066" Height="44px" Width="149px"  ToolTip="if you hire employee register for your company, else if you are seeking for a job select individual">
                        <asp:ListItem>Applicant</asp:ListItem>
                        <asp:ListItem>Company</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Font-Italic="True" Font-Size="XX-Large" ForeColor="White" Height="46px" OnClick="Button1_Click" Text="+" Width="98px" BackColor="Black" />
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
        
        <div style="background-color:lightsteelblue; border:dotted;">
            <h2>
                If you already have an account sign in from here</h2>
    <p>
                &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="Lime" BorderColor="#CC0000" BorderStyle="Ridge" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" ForeColor="Black" Height="52px" OnClick="Button2_Click" Text="sign in" Width="106px" />
    </p>
    <p>
                &nbsp;</p>
        
        </div>
        </asp:Content>



