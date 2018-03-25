<%@ Page Title="" Language="C#" MasterPageFile="~/Company/companyMasterPage.master" AutoEventWireup="true" CodeFile="ViewDetailsOfPost.aspx.cs" Inherits="Company_ViewDetailsOfPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMiddle" runat="Server">

        <br /><br />
    <form id="form1" runat="server">

        <div class="container">

          
                <div class="card-header">
                    <div class="col-5">
                        <h4><strong>Position: </strong>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
                    </div>
                    <div class="col-5">
                        <div class="row"></div>
                        <p>
                            <strong>Deadline: </strong>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </p>
                    </div>
                    <div class="col-2">
                        <p>
                            <strong>Vacancy: </strong>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </p>

                    </div>


            </div>
     
        <div class="card-body">
            <div class="row">
                <p>
                    <strong>Title:</strong>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </p>
            </div>
            <br />
            <div class="row">
                <p>
                    <strong>Requirment:</strong>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </p>
            </div>
            <br />
            <br />

            <div class="row">
                <strong>Description: </strong>
                <p>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </p>
            </div>

            <br />
            <br />
            <div class="row">
                <p>
                    <strong>Resposibility:</strong>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </p>
            </div>

        </div>
        <div class="card-footer">
            <div>

                <p>
                    <strong>Location:</strong>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </p>
                </div>
            </div>
        </div>
    </form>
    <br /><br />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderRight" runat="Server">
</asp:Content>

