<%@ Page Title="" Language="C#" MasterPageFile="~/User/userMasterPage.master" AutoEventWireup="true" CodeFile="JobPortal.aspx.cs" Inherits="User_JobPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>job Portal</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMiddle" runat="Server">

    <form runat="server">
    <div runat="server">
        <asp:repeater id="Repeater1" runat="server">
            <ItemTemplate>
                <div class="card border-success mb-3" style="max-width: 90%;">
                    <div  class="card-header text-white bg-secondary mb-2">
                        <div class="row">
                            <div class="col-7">
                                <h4><strong>Position:</strong><%#Eval("positionName") %></h4>
                            </div>
                            <div class="col-5">
                                <p><strong>Company: </strong><%#Eval("companyName") %></p>
                            </div>

                        </div>
                    </div>
                    <div class="card-body text-white bg-success ">
                        <div class="row">
                            <p><strong>Title:</strong> <%#Eval("jobTitle") %></p>
                        </div>
                        <br />
                        <div class="row">
                            <p><strong>Requirment:</strong>  <%#Eval("jobRequirment") %></p>
                        </div>

                    </div>
                    <div class="card-footer text-white bg-info">
                        <div class="row">
                            <div class="col-7">
                                <p><strong>Location:</strong>  <%#Eval("jobLocation") %></p>
                            </div>
                            <div class="col-5">
                                <p><strong>Deadline:</strong>  <%#Eval("deadLine") %></p>
                            </div>
                        </div>
                          <div class="col-4">
                                 <a class="btn btn-outline-light"  href="ViewDetailsOfPost.aspx?PID=<%#Eval("postId") %>">View Details</a>
                            </div>
                    </div>







                </div>
                <br />
                <br />

            </ItemTemplate>
        </asp:repeater>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderRight" runat="Server">
</asp:Content>

