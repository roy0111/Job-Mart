<%@ Page Title="" Language="C#" MasterPageFile="~/Company/companyMasterPage.master" AutoEventWireup="true" CodeFile="jobPost.aspx.cs" Inherits="Company_jobPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Job Posts </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMiddle" runat="Server">


    <div runat="server">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="card border-success mb-3" style="max-width: 90%;">
                    <div  class="card-header text-white bg-secondary mb-2">
                        <div class="row">
                            <div class="col-7">
                                <h4><strong>Position:</strong><%#Eval("positionName") %></h4>
                            </div>
                            <div class="col-5">
                                <p><strong>Posting Time:</strong><%#Eval("postingTime") %></p>
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






<%--                <div id="kkk" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <div class="row">
                                    <div class="col-6">
                                        <h4><strong>Position:</strong><%#Eval("positionName") %></h4>
                                    </div>
                                    <div class="col-6">
                                        <div class="row"></div>
                                        <p><strong>Posting Time:</strong><%#Eval("postingTime") %></p>
                                    </div>
                                    <div class="row"></div>
                                    <p><strong>Vacancy:</strong><%#Eval("noOfVacancy") %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <p><strong>Title:</strong> <%#Eval("jobTitle") %></p>
                        </div>
                        <br />
                        <div class="row">
                            <p><strong>Requirment:</strong>  <%#Eval("jobRequirment") %></p>
                        </div>
                        <br />
                        <br />

                        <div class="row">
                            <strong>Description: </strong>
                            <p><%#Eval("jobDescription") %></p>
                        </div>

                        <br />
                        <br />
                        <div class="row">
                            <p><strong>Resposibility:</strong>  <%#Eval("jobNature") %></p>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <div class="row">
                            <div class="col-7">
                                <p><strong>Location:</strong>  <%#Eval("jobLocation") %></p>
                            </div>
                            <div class="col-5">

                                <p><strong>Deadline:</strong>  <%#Eval("deadLine") %></p>

                            </div>

                        </div>
                    </div>
                </div>--%>


                </div>
                <br />
                <br />

            </ItemTemplate>
        </asp:Repeater>
    </div>


</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderRight" runat="Server">



    <div class="card text-white bg-secondary mb-3" style="max-width: 20rem; padding-top: 10%">
        <div class="card-header bg-success">
            <h5>Add a new job post</h5>
        </div>
        <div class="card-body" style="align-self: center">

            <a href="addNewjobForm.aspx" class="btn btn-outline-warning" style="width: 112px; font-size: large;"><i class="fa  fa-tasks fa-2x "></i>
                <div class="text-center">
                    Post Job 
                </div>
            </a>
        </div>
    </div>

</asp:Content>

