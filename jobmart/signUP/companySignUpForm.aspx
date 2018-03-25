<%@ Page Title="" Language="C#" MasterPageFile="~/signUP/signupMasterPage.master" AutoEventWireup="true" CodeFile="companySignUpForm.aspx.cs" Inherits="signUP_companySignUpForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Company Signup</title>
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 596px;
        }
        .auto-style11 {
            width: 6px;
        }
        .auto-style12 {
            width: 211px;
        }
        .auto-style13 {
            display: block;
            font-size: 0.9375rem;
            line-height: 1.5;
            color: #52575C;
            background-clip: padding-box;
            border-radius: 0.25rem;
            -webkit-transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
        .auto-style15 {
            text-align: center;
            font-size: large;
            width: 210px;
        }
        .auto-style18 {
            width: 211px;
            height: 52px;
            text-align: center;
        }
        .auto-style20 {
            width: 6px;
            height: 10px;
        }
        .auto-style21 {
            text-align: center;
            font-size: large;
            width: 210px;
            height: 10px;
        }
        .auto-style22 {
            width: 211px;
            height: 10px;
            text-align: left;
        }
        .auto-style23 {
            width: 117px;
            height: 10px;
            text-align: center;
        }
        .auto-style27 {
            width: 6px;
            height: 51px;
        }
        .auto-style28 {
            text-align: center;
            font-size: large;
            width: 210px;
            height: 51px;
        }
        .auto-style29 {
            width: 211px;
            height: 51px;
        }
        .auto-style30 {
            width: 117px;
            height: 51px;
            text-align: center;
        }
        .auto-style31 {
            width: 6px;
            height: 67px;
        }
        .auto-style32 {
            text-align: center;
            font-size: large;
            width: 210px;
            height: 67px;
        }
        .auto-style33 {
            width: 211px;
            height: 67px;
        }
        .auto-style34 {
            width: 117px;
            height: 67px;
            text-align: center;
        }
        .auto-style35 {
            width: 6px;
            height: 52px;
        }
        .auto-style36 {
            text-align: center;
            font-size: large;
            width: 210px;
            height: 52px;
        }
        .auto-style37 {
            width: 211px;
            height: 52px;
        }
        .auto-style38 {
            width: 117px;
            height: 52px;
            text-align: center;
        }
        .auto-style39 {
            width: 6px;
            height: 54px;
        }
        .auto-style40 {
            text-align: center;
            font-size: large;
            width: 210px;
            height: 54px;
        }
        .auto-style41 {
            width: 211px;
            height: 54px;
        }
        .auto-style42 {
            width: 117px;
            height: 54px;
            text-align: center;
        }
        .auto-style43 {
            width: 6px;
            height: 61px;
        }
        .auto-style44 {
            text-align: center;
            font-size: large;
            width: 210px;
            height: 61px;
        }
        .auto-style45 {
            width: 211px;
            height: 61px;
        }
        .auto-style46 {
            width: 117px;
            height: 61px;
            text-align: center;
        }
        .auto-style47 {
            width: 6px;
            height: 87px;
        }
        .auto-style48 {
            text-align: center;
            font-size: large;
            width: 210px;
            height: 87px;
        }
        .auto-style49 {
            width: 211px;
            height: 87px;
        }
        .auto-style50 {
            width: 117px;
            height: 87px;
            text-align: center;
        }
        .auto-style51 {
            width: 117px;
            text-align: center;
        }
        .auto-style52 {
            text-align: center;
            font-size: large;
        }
        .auto-style54 {
            width: 211px;
            text-align: left;
        }
        .auto-style56 {
            text-align: center;
            font-size: large;
            height: 10px;
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
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">Company Name</td>
                <td class="auto-style12">
                    <asp:TextBox CssClass="auto-style13" required="require" placeholder="enter name" ID="TextBox1" runat="server" Height="32px" Width="221px" MaxLength="32"></asp:TextBox>
                </td>
                <td class="auto-style51">&nbsp;<asp:Label ID="Label1" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style32">Mail</td>
                <td class="auto-style33">
                    <asp:TextBox CssClass="auto-style13" required="require" placeholder="enter mail " ID="TextBox2" runat="server" Height="32px" TextMode="Email" Width="221px" MaxLength="50"></asp:TextBox>
                </td>
                <td class="auto-style34">
                    <asp:Label ID="Label2" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style47"></td>
                <td class="auto-style48">Address</td>
                <td class="auto-style49">
                    <asp:TextBox CssClass="auto-style13" ID="TextBox3" required="require" placeholder="enter location" runat="server" Height="51px" TextMode="MultiLine" Width="221px" MaxLength="50"></asp:TextBox>
                </td>
                <td class="auto-style50">
                    <asp:Label ID="Label3" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style28">Company Website</td>
                <td class="auto-style29">
                    <asp:TextBox CssClass="auto-style13" required="require" placeholder="enter web page url" ID="TextBox4" runat="server" Height="32px" TextMode="Url" Width="221px" MaxLength="50"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:Label ID="Label4" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style44">Established Date</td>
                <td class="auto-style45">
                    <asp:TextBox CssClass="auto-style13" ID="TextBox5" runat="server" Height="32px" TextMode="Date" Width="221px"></asp:TextBox>
                </td>
                <td class="auto-style46">
                    <asp:Label ID="Label5" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style36">HeadQuater</td>
                <td class="auto-style18">
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
                <td class="auto-style38">
                    <asp:Label ID="Label6" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style40">Phone</td>
                <td class="auto-style41">
                    <asp:TextBox CssClass="auto-style13" ID="TextBox6" required="require" placeholder="e.g 0*********" runat="server" Height="32px" TextMode="Phone" Width="221px" MaxLength="12"></asp:TextBox>
                </td>
                <td class="auto-style42">
                    <asp:Label ID="Label7" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style36">Password</td>
                <td class="auto-style37">
                    <asp:TextBox CssClass="auto-style13" required="require" placeholder="enter password" ID="TextBox7" runat="server" Height="32px" TextMode="Password" Width="221px" MaxLength="36"></asp:TextBox>
                </td>
                <td class="auto-style38">
                    <asp:Label ID="Label8" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style32">Retype Password</td>
                <td class="auto-style33">
                    <asp:TextBox CssClass="auto-style13" required="require" placeholder="confirm password" ID="TextBox8" runat="server" Height="32px" TextMode="Password" Width="221px" MaxLength="36"></asp:TextBox>
                </td>
                <td class="auto-style34">
                    <asp:Label ID="Label9" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
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
                    <asp:Label ID="Label10" runat="server" CssClass="text-danger" ForeColor="Red"></asp:Label>
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
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
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

