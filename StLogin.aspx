<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="StLogin.aspx.cs" Inherits="school.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
	<!-- Start Breadcrumb -->
	<div id="mu-breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav aria-label="breadcrumb" role="navigation">
					  <ol class="breadcrumb mu-breadcrumb">
					    <li class="breadcrumb-item"><a href="#">Home</a></li>
					    <li class="breadcrumb-item active" aria-current="page"> Log In</li>
					  </ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumb -->

	
	<!-- Start main content -->
	<main>
		<!-- Start Contact -->
		<section id="mu-contact">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-contact-area">
							<!-- Title -->
							<div class="row">
								<div class="col-md-12">
									<div class="mu-title">
										<h2>Login Here</h2>
										<p>Login to your school account</p>
									</div>
								</div>
							</div>
								<!-- Start Contact Content -->

							<div class="mu-contact-content">
								<div class="row">
                                   
									<div class="col-md-12">
										<div class="mu-contact-form-area">
											<div id="form-messages"></div>
											<form class="mu-contact-form" runat="server">

												<div class="form-group">  
													<span class="fa fa-user mu-contact-icon"></span>              
                    <asp:TextBox ID="TextBox1" runat="server" type="number" class="form-control input-lg" name="rollnumber" placeholder="Enrollment Number" required="required"></asp:TextBox>
												</div>

											

												<div class="form-group">
													<span class="fa fa-pencil-square-o mu-contact-icon"></span> 
                                                                <asp:TextBox ID="TextBox3" runat="server" type="password" class="form-control input-lg" name="password" placeholder="Password" ></asp:TextBox>


<%--													<textarea class="form-control" placeholder="Message" id="message" name="message" required></textarea>--%>
												</div>
                                         
                                                 <asp:Button ID="Button1" Text="Login" class="mu-send-msg-btn" runat="server" OnClick="Button1_Click" />
			  					        	</form>
										</div>
									</div>

								</div>
							</div>
							<!-- End Contact Content -->
						</div>
					</div>
				</div>
			</div>
		</section>

</asp:Content>
