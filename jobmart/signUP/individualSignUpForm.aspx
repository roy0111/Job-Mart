<%@ Page Title="" Language="C#" MasterPageFile="~/signUP/signupMasterPage.master" AutoEventWireup="true" CodeFile="individualSignUpForm.aspx.cs" Inherits="signUP_individualSignUpForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Sign Up</title>
<style type="text/css">
    .auto-style11 {
        height: 40px;
        width: 50px;
    }
    .auto-style12 {
        height: 42px;
    }
    .auto-style13 {
        height: 43px;
    }
    .auto-style14 {
        height: 101px;
    }
    .auto-style15 {
        height: 39px;
    }
    .auto-style16 {
        height: 81px;
    }
    .auto-style17 {
        height: 77px;
    }
    .auto-style19 {
        height: 79px;
    }
    .auto-style20 {
        height: 36px;
        width: 50px;
    }
    .auto-style23 {
        height: 52px;
    }
    .auto-style24 {
        height: 95px;
    }
    .auto-style25 {
        height: 83px;
    }
    .auto-style27 {
        height: 109px;
    }
    .auto-style28 {
        height: 93px;
    }
    .auto-style29 {
        height: 89px;
    }
    .auto-style30 {
        height: 89px;
        width: 50px;
    }
    .auto-style31 {
        height: 93px;
        width: 50px;
    }
    .auto-style32 {
        height: 109px;
        width: 50px;
    }
    .auto-style34 {
        height: 83px;
        width: 50px;
    }
    .auto-style35 {
        height: 95px;
        width: 50px;
    }
    .auto-style36 {
        height: 79px;
        width: 50px;
    }
    .auto-style37 {
        height: 77px;
        width: 50px;
    }
    .auto-style38 {
        height: 81px;
        width: 50px;
    }
    .auto-style39 {
        height: 101px;
        width: 50px;
    }
    .auto-style41 {
        height: 63px;
        text-align: left;
    }
    .auto-style42 {
        height: 76px;
        width: 50px;
    }
    .auto-style43 {
        height: 76px;
    }
    .auto-style44 {
        height: 63px;
        width: 50px;
    }
    .auto-style45 {
        height: 63px;
    }
    .auto-style46 {
        vertical-align: text-bottom;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <fieldset >
        
        <table class="auto-style10">
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style56" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build your Information</td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style29">Full Name</td>
                <td class="auto-style29">
                    <asp:TextBox CssClass="auto-style13" ID="TextBox1" required="require" placeholder="enter full name"  runat="server" Height="32px" Width="221px" MaxLength="32"></asp:TextBox>
                </td>
                <td class="auto-style29">&nbsp;<asp:Label ID="Label1" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style28">Mail</td>
                <td class="auto-style28">
                    <asp:TextBox CssClass="auto-style13" ID="TextBox2" required="require" placeholder="enter mail" runat="server" Height="32px" TextMode="Email" Width="221px" MaxLength="50"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    <asp:Label ID="Label2" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style32"></td>
                <td class="auto-style27">Address</td>
                <td class="auto-style27">
                    <asp:TextBox CssClass="auto-style13" ID="TextBox3" required="require" placeholder="enter address" runat="server" Height="51px" TextMode="MultiLine" Width="221px" MaxLength="50"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label3" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style43">Date of Birth</td>
                <td class="auto-style43">
                    <asp:TextBox CssClass="auto-style13" ID="TextBox5" required="require"  runat="server" Height="32px" TextMode="Date" Width="221px"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    <asp:Label ID="Label5" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style44"></td>
                <td class="auto-style45">Gender</td>
                <td class="auto-style41">
                    <asp:RadioButtonList CssClass="auto-style46" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style45">
                    </td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style25">Division</td>
                <td class="auto-style25">
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control-lg" runat="server" Height="44px" Width="221px">
                        <asp:ListItem>DHAKA</asp:ListItem>
                        <asp:ListItem>COMILLA</asp:ListItem>
                        <asp:ListItem>CHITTAGONG</asp:ListItem>
                        <asp:ListItem>RAJSHAHI</asp:ListItem>
                        <asp:ListItem>SYLHET</asp:ListItem>
                        <asp:ListItem>BARISHAL</asp:ListItem>
                        <asp:ListItem>JOSORE</asp:ListItem>
                        <asp:ListItem>DINAJPUR</asp:ListItem>
                        <asp:ListItem>MYMANSHING</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style25">
                    <asp:Label ID="Label6" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style25">Phone</td>
                <td class="auto-style25">
                    <asp:TextBox CssClass="auto-style13" required="require" placeholder="e.g 0*********" ID="TextBox6" runat="server" Height="32px" TextMode="Phone" Width="221px" MaxLength="12"></asp:TextBox>
                </td>
                <td class="auto-style25">
                    <asp:Label ID="Label7" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style24">Degree</td>
                <td class="auto-style24">
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control-lg" runat="server" Height="44px" Width="221px">
                        <asp:ListItem>B. Sc.</asp:ListItem>
                        <asp:ListItem>B. Tech.</asp:ListItem>
                        <asp:ListItem>Diploma</asp:ListItem>
                        <asp:ListItem>M. Sc.</asp:ListItem>
                        <asp:ListItem>PhD</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style24">
                    <asp:Label ID="Label8" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style19">Institute</td>
                <td class="auto-style19">
                    <asp:TextBox CssClass="auto-style13" ID="TextBox9" required="require" placeholder="enter institute name" runat="server" Height="32px" Width="221px" MaxLength="50"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="Label9" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style37"></td>
                <td class="auto-style17">Subject</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList3" CssClass="form-control-lg" runat="server" Height="44px" Width="221px">
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>ECE</asp:ListItem>
                        <asp:ListItem>EEE</asp:ListItem>
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label10" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style16">Password</td>
                <td class="auto-style16">
                    <asp:TextBox CssClass="auto-style13" ID="TextBox7" required="require" placeholder="enter password" runat="server" Height="32px" TextMode="Password" Width="221px" MaxLength="36"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:Label ID="Label11" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style14">Re-type Password</td>
                <td class="auto-style14">
                    <asp:TextBox CssClass="auto-style13" required="require" placeholder="confirm password" ID="TextBox8" runat="server" Height="32px" TextMode="Password" Width="221px" MaxLength="36"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="Label12" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style52" colspan="2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Agree with Terms and Conditions" />
                </td>
                <td class="auto-style51">
                    <asp:Label ID="Label13" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style52" colspan="2">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style54">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-warning" Height="55px" Text="Submit" Width="149px" style="font-weight: bold; font-size: large" OnClick="Button2_Click" />
                    </strong>
                </td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
            </table>
        

    </fieldset>


</asp:Content>

