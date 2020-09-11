<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="PaidFee.aspx.cs" Inherits="school.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <form runat="server" class="up" >
    <section id="breadcrumb" >
        <div class="container" >
            <div class="breadcrumb" >
                <li class="active,st">Student Dashboard
                    <asp:Button ID="Button1" Text="SignOut" class="mu-send-msg-btn  out" runat="server" OnClick="Button1_Click" />

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
                        <a href="Dashboardd.aspx" class="list-group-item ">
                            Student Information
                        </a>
                        <a href="FeeDue.aspx" class="list-group-item " >
                        
                           Due Fee 
                          
                        </a>
                        <a href="#" class="list-group-item  active " id="mycolor">
                       
                        Paid Fee
                        </a>

                    </div>
                </div>

                <div class="col-md-9","info">
                    <div class="panel panel-default">
                          <div class="panel-heading">
                            <h3 class="panel-title">Paid Fees Information</h3>
                          </div>
                          <div class="panel-body">
                             <table class="table table-striped table-hover">
                              <tr>
                                <th>Month</th>
                                <th>Paid Fees</th>
                                <th>Date</th>
                              </tr>
                              <tr>
                                <td>January</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Label">____</asp:Label>
                                </td>
                              </tr>
                              <tr>
                                <td>February  </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                 <tr>
                               <td>March  </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Label">000</asp:Label>
                                </td>
                                    
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Label">____</asp:Label>

                                </td>
                                      </tr>
                              <tr>
                                <td>April  </td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                              <tr>
                              <td>May  </td>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                   <tr>
                              <td>June  </td>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                   <tr>
                              <td>July  </td>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                   <tr>
                              <td>August  </td>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label16" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                   <tr>
                              <td>September  </td>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label18" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                   <tr>
                              <td>October  </td>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label20" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                   <tr>
                              <td>November  </td>
                                <td>
                                    <asp:Label ID="Label21" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label22" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                   <tr>
                              <td>December  </td>
                                <td>
                                    <asp:Label ID="Label23" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label24" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                   <tr>
                              <td>Examination Fee  </td>
                                <td>
                                    <asp:Label ID="Label25" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label26" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                                   <tr>
                              <td>Miscellenous Charges  </td>
                                <td>
                                    <asp:Label ID="Label27" runat="server" Text="Label">000</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label28" runat="server" Text="Label">____</asp:Label>

                                </td>
                              </tr>
                    </table>

                          </div>
                        </div>
            </div>
        </div>
    </section>
                
</asp:Content>
