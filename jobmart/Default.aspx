<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="76px" TextMode="Email" Width="257px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="Button" Width="134px" />
                        <asp:TextBox ID="TextBox2" runat="server" Height="55px" TextMode="Date" Width="286px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="161px" Width="328px"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" Height="154px" MaxLength="32" TextMode="Password" Width="501px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
