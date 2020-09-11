<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="school.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="ar">

	<!-- Start Breadcrumb -->
	<div id="mu-breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav aria-label="breadcrumb" role="navigation">
					  <ol class="breadcrumb mu-breadcrumb">
					    <li class="breadcrumb-item"><a href="#">Home</a></li>
					    <li class="breadcrumb-item active" aria-current="page"> Sign Up</li>
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
										<h2>Sign Up Here</h2>
										<p>Create Your Account</p>
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
													<span class="fa fa-envelope mu-contact-icon"></span>          
                                                     <asp:TextBox ID="TextBox2" runat="server" type="text" class="form-control input-lg" name="name" placeholder="Full Name" required="required"></asp:TextBox>
<%--													<input type="email" class="form-control" placeholder="Enter Email" id="email" name="email" required>--%>
												</div>    

												<div class="form-group"> 
													<span class="fa fa-folder-open-o mu-contact-icon"></span>    
                                                                <asp:TextBox ID="TextBox5" runat="server" type="text" class="form-control input-lg" name="name" placeholder="Father Name" required="required"></asp:TextBox>

<%--													<input type="text" class="form-control" placeholder="Your Subject" id="subject" name="subject" required>--%>
												</div>

												<div class="form-group">
													<span class="fa fa-pencil-square-o mu-contact-icon"></span> 
                                                                <asp:TextBox ID="TextBox3" runat="server" type="password" class="form-control input-lg" name="password" placeholder="Password" ></asp:TextBox>


<%--													<textarea class="form-control" placeholder="Message" id="message" name="message" required></textarea>--%>
												</div>
                                                	<div class="form-group">
													<span class="fa fa-pencil-square-o mu-contact-icon"></span> 
                                         <asp:TextBox ID="TextBox4" runat="server" type="text" class="form-control input-lg" name="contact" placeholder="Contact Information email/phone" ></asp:TextBox>

<%--													<textarea class="form-control" placeholder="Message" id="message" name="message" required></textarea>--%>
												</div>
                                      <%--          <button type="submit" class="mu-send-msg-btn"><span>Send Message</span></button>--%>

                                                 <asp:Button ID="Button1" Text="SignUp" class="mu-send-msg-btn" runat="server" OnClick="Add" />
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
		<!-- End Contact -->

</asp:Content>
