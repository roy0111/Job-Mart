<%@ Page Title="" Language="C#" MasterPageFile="~/Company/companyMasterPage.master" AutoEventWireup="true" CodeFile="addNewjobForm.aspx.cs" Inherits="Company_addNewjobForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMiddle" runat="Server">
    <div class=" container " style="text-align: center">
        <form runat="server" class="form-control" style="padding-top: 5%">

            <div class="row">

                <div class="col-12">
                                    <label>Job title</label>
                <br />
                    <asp:TextBox class="form-control" placeholder="Enter Job title" MaxLength="50" required="require" ID="TextBox1" Rows="2" runat="server"></asp:TextBox>
                </div>
                 
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-12">
                    <label>Select required Position</label>
                    <br />
                    <div class="form-group">


                        <asp:DropDownList class="form-control" ID="DropDownList1" required="require" runat="server">
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Accountant</asp:ListItem>
                            <asp:ListItem>Analytics</asp:ListItem>
                            <asp:ListItem>Developer</asp:ListItem>
                            <asp:ListItem>SQA</asp:ListItem>
                            <asp:ListItem>Designer</asp:ListItem>
                            <asp:ListItem>Analytics</asp:ListItem>
                            <asp:ListItem>Tester</asp:ListItem>
                            <asp:ListItem>Fresher</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>


                    </div>
                </div>
                 
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>

          
            </div>
            <br />
            <br />
            <div class="row">

                <div class="col-12">
                    <label>No. of Vacancy</label>
                    <br />
                    <asp:TextBox class="form-control" placeholder="no of vacancy" ID="TextBox2" Rows="1" required="require" runat="server" TextMode="Number"></asp:TextBox>
                </div>
                 
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                
            </div>
            <br />
            <br />
            <div class="row">

                <br />
                <div class="col-12">
                    <label>job Description</label>
                    <br />
                    <asp:TextBox class="form-control" ID="TextBox3" placeholder="Describe about job" Rows="5" required="require" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                 
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
               
                <br />
                <br />
            </div>


            <div class="row">

                <br />
                <div class="col-12">
                    <label>job Recuirment</label>
                    <br />
                    <asp:TextBox class="form-control" ID="TextBox4" placeholder="requirment of job" Rows="5" required="require" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                 
                    <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
               
            </div>
            <br />
            <br />
            <div class="row">

                <div class="col-12">
                    <label>job Responsibility</label>
                    <br />
                    <asp:TextBox class="form-control" ID="TextBox5" placeholder="Resposibilities" Rows="5" required="require" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                 
                    <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
             
            </div>



            <br />
            <br />
            <div class="row">

                <div class="col-12">
                    <label>job Location</label>
                    <br />
                    <asp:TextBox class="form-control" ID="TextBox6" MaxLength="50" placeholder="job location or branch" Rows="2" required="require" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                 
                    <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
               
            </div>
            <br />
            <br />
            <div class="row">

                <div class="col-12">
                    <label>Slary and other facility</label>
                    <br />
                    <asp:TextBox class="form-control" ID="TextBox7" placeholder="salary status" Rows="2" required="require" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                 
                    <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
               
            </div>
            <br />
            <br />
            <div class="row">

                <div class="col-12">
                    <label>Deadline</label>
                    <br />
                    <asp:TextBox class="form-control" ID="TextBox8" Rows="2" required="require" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                 
                    <asp:Label ID="Label9" runat="server" ForeColor="Red"></asp:Label>
               
            </div>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Post It" CssClass="btn btn-success" Height="48px" Width="301px" OnClick="Button1_Click" />
            <br />
            <br />
        </form>
        <br />
        <br />
        <br />
   </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderRight" runat="Server">
</asp:Content>

