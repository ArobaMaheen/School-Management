<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Dashboardd.aspx.cs" Inherits="school.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="up">
    <section id="breadcrumb" >
        <div class="container" >
            <div class="breadcrumb" >
                <li class="active">Student Dashboard
                     <asp:Button ID="Button1" Text="SignOut" class="mu-send-msg-btn  out" runat="server" OnClick="Button1_Click" />
                  <%--  <asp:Button ID="Button1" runat="server" Text="SignOut" class="out" OnClick="Button1_Click"/>--%>
                </li>             
            </div>
        </div>
    </section>
    </form>
    <section id="main">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="list-group">
                        <a href="#" class="list-group-item active " id="mycolor">
                            Student Information
                        </a>
                        <a href="FeeDue.aspx" class="list-group-item">
                        
                           Due Fee
                          
                        </a>
                        <a href="PaidFee.aspx" class="list-group-item">
                       
                          Paid Fee
                        </a>

                    </div>
                </div>
                 <div class="col-md-9">
                   <!-- Wbsite overview -->
                     <div class="panel panel-default">
                            <div class="panel-heading main-color-bg">
                                <h3 class="panel-title"> Overview</h3>
                            </div>
                            <div class="panel-body">
                               <div class="col-md-3">
                                  <div class="well dash-box">
                                      <h2><span class="glyphicon glyphicon-user" aria-hidden="true"></span> </h2>
                                      <h4>Profile</h4> 
                                  </div>
                               </div>
                               <div class="col-md-3">
                                  <div class="well dash-box">
                                      <h2><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> </h2>
                                      <h4>Assignments</h4> 
                                  </div>
                               </div>
                               <div class="col-md-3">
                                  <div class="well dash-box">
                                      <h2><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h2>
                                      <h4>Quizes</h4> 
                                  </div>
                               </div>
                               <div class="col-md-3">
                                  <div class="well dash-box">
                                      <h2><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> </h2>
                                      <h4>Performance</h4> 
                                  </div>
                               </div>
                            </div>
                     </div>
                      <!-- Latest users -->
                     <div class="panel panel-default">
                          <div class="panel-heading">
                            <h3 class="panel-title">Student Information</h3>
                          </div>
                          <div class="panel-body">
                             <table class="table table-striped table-hover">
                      
                              <tr>
                                <td>Name</td>
                                <td><asp:Label ID="Label5" runat="server" Text="" class="label"></asp:Label></td>
                              
                              </tr>
                              <tr>
                                <td>Father Name</td>
                                <td><asp:Label ID="Label1" runat="server" Text="" class="label"></asp:Label></td>
                              
                              </tr>
                              <tr>
                                <td>Enrollment #</td>
                                <td> <asp:Label ID="Label6" runat="server" Text="" class="label"></asp:Label></td>
                               
                              </tr>
                              <tr>
                                <td>Contact</td>
                                <td> <asp:Label ID="Label7" runat="server" Text="" class="label"></asp:Label>  </td>
                               
                              </tr>
                             
                    </table>
                          </div>
                        </div>

              <%--  <div class="col-md-4","info">
                    <!-- Wbsite overview -->
                    <div>
                        <div>
                           
                            <h3 class="panel-title">Student Information</h3><br /><br />
                            <h3>Name <br /> <br /><asp:Label ID="Label5" runat="server" Text="" class="label"></asp:Label>
                            </h3>    <br />                     
                            <h3>Father Name <br /><br /> <asp:Label ID="Label1" runat="server" Text="" class="label"></asp:Label>
                            </h3>        <br />                   
                            <h3>Enrollment Number   <br /><br />  <asp:Label ID="Label6" runat="server" Text="" class="label"></asp:Label>                            
                            </h3>          <br />                
                            <h3>Contact       <br /> <br />   <asp:Label ID="Label7" runat="server" Text="" class="label"></asp:Label>                         
                            </h3>                       
                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                        

                </div>--%>
            </div>
        </div>
    </section>


</asp:Content>
