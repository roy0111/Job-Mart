<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Requests.aspx.cs" Inherits="Admin_Requests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title> Requests</title>
    <style type="text/css">
        .auto-style4 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMiddle" Runat="Server">
   
    <form id="form1" runat="server">
        
        <h1>Company Records</h1>

        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="idNo" DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="966px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idNo" HeaderText="Id No" ReadOnly="True" SortExpression="idNo" />
                <asp:BoundField DataField="userMail" HeaderText="User Mail" SortExpression="userMail" />
                <asp:BoundField DataField="usertype" HeaderText="Type" SortExpression="usertype" />
                <asp:BoundField DataField="activity" HeaderText="Activity" SortExpression="activity" />
                <asp:BoundField DataField="reg_date" HeaderText="Reg. Date" SortExpression="reg_date" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [loginData] WHERE [idNo] = @idNo" InsertCommand="INSERT INTO [loginData] ([idNo], [userMail], [usertype], [activity], [reg_date]) VALUES (@idNo, @userMail, @usertype, @activity, @reg_date)" SelectCommand="SELECT [idNo], [userMail], [usertype], [activity], [reg_date] FROM [loginData] WHERE ([usertype] = @usertype) ORDER BY [reg_date] DESC, [activity]" UpdateCommand="UPDATE [loginData] SET [userMail] = @userMail, [usertype] = @usertype, [activity] = @activity, [reg_date] = @reg_date WHERE [idNo] = @idNo">
            <DeleteParameters>
                <asp:Parameter Name="idNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idNo" Type="String" />
                <asp:Parameter Name="userMail" Type="String" />
                <asp:Parameter Name="usertype" Type="String" />
                <asp:Parameter Name="activity" Type="String" />
                <asp:Parameter DbType="Date" Name="reg_date" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="Company" Name="usertype" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="userMail" Type="String" />
                <asp:Parameter Name="usertype" Type="String" />
                <asp:Parameter Name="activity" Type="String" />
                <asp:Parameter DbType="Date" Name="reg_date" />
                <asp:Parameter Name="idNo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <span class="auto-style4">All Records</span><br />
        <br />
        

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="973px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idNo" HeaderText="idNo" ReadOnly="True" SortExpression="idNo" />
                <asp:BoundField DataField="userMail" HeaderText="userMail" SortExpression="userMail" />
                <asp:BoundField DataField="usertype" HeaderText="usertype" SortExpression="usertype" />
                <asp:BoundField DataField="activity" HeaderText="activity" SortExpression="activity" />
                <asp:BoundField DataField="reg_date" HeaderText="reg_date" SortExpression="reg_date" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [loginData] WHERE [idNo] = @original_idNo" InsertCommand="INSERT INTO [loginData] ([idNo], [userMail], [usertype], [activity], [reg_date]) VALUES (@idNo, @userMail, @usertype, @activity, @reg_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [idNo], [userMail], [usertype], [activity], [reg_date] FROM [loginData] ORDER BY [reg_date], [activity]" UpdateCommand="UPDATE [loginData] SET [userMail] = @userMail, [usertype] = @usertype, [activity] = @activity, [reg_date] = @reg_date WHERE [idNo] = @original_idNo">
            <DeleteParameters>
                <asp:Parameter Name="original_idNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idNo" Type="String" />
                <asp:Parameter Name="userMail" Type="String" />
                <asp:Parameter Name="usertype" Type="String" />
                <asp:Parameter Name="activity" Type="String" />
                <asp:Parameter DbType="Date" Name="reg_date" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userMail" Type="String" />
                <asp:Parameter Name="usertype" Type="String" />
                <asp:Parameter Name="activity" Type="String" />
                <asp:Parameter DbType="Date" Name="reg_date" />
                <asp:Parameter Name="original_idNo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderRight" Runat="Server">
</asp:Content>

