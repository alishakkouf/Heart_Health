<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="heartHealth.index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form2" runat="server">
            <%-- Article view --%>
			<section class="procedure_category section_gap">
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>Our Most Visited Articles</h1>
					<p>
						Most Visited Articls May you Find It Useful.
					</p>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="" id="image1" runat="server" alt="">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="single-blog.aspx">
									<h5>
                                        <asp:Label ID="Label6" runat="server" Text=""></asp:Label></h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
                        <p>visitors : 
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                          
                    </p>
                         &nbsp &nbsp
                             <asp:Button ID="Button1" class="main_btn mr-10" runat="server" Text="visit" OnClick="Button1_Click" />
					</div>
                    
				</div>
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="" id="image2" runat="server" alt="">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="single-blog.aspx">
									<h5>
                                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h5>
								</a>
								<div class="border_line"></div>
							</div>
                         
						</div>
                              <p>visitors : 
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                   &nbsp &nbsp
                             <asp:Button ID="Button2" class="main_btn mr-10" runat="server" Text="visit" OnClick="Button2_Click" />
                    </p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="" id="image3" runat="server" alt="">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="single-blog.aspx">
									<h5>
                                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h5>
								</a>
								<div class="border_line"></div>
							</div>
                          
						</div>
                              <p>visitors : 
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                   &nbsp &nbsp
                             <asp:Button ID="Button3" class="main_btn mr-10" runat="server" Text="visit" OnClick="Button3_Click" />
                    </p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="" id="image4" runat="server" alt="">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="single-blog.aspx">
									<h5>
                                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
                        <p>visitors : 
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                             &nbsp &nbsp
                             <asp:Button ID="Button4" class="main_btn mr-10" runat="server" Text="visit" OnClick="Button4_Click" />
                    </p>
					</div>
                    
				</div>
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="" id="image5" runat="server" alt="">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="single-blog.aspx">
									<h5>
                                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></h5>
								</a>
								<div class="border_line"></div>
							</div>
                        
						</div>
                              <p>visitors : 
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                   &nbsp &nbsp
                             <asp:Button ID="Button5" class="main_btn mr-10" runat="server" Text="visit" OnClick="Button5_Click" />
                    </p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="" id="image6" runat="server" alt="">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="single-blog.aspx">
									<h5>
                                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></h5>
								</a>
								<div class="border_line"></div>
							</div>
                      
						</div>
                              <p>visitors : 
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                   &nbsp &nbsp
                             <asp:Button ID="Button6" class="main_btn mr-10" runat="server" Text="visit" OnClick="Button6_Click" />
                    </p>
					</div>
				</div>
			</div>
		</div>
	</section>
	

    <%-- Services area --%>
    <section class="service_area ">
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>Our Offered Services</h1>
					<p>
                        We wish to find our WebSite useful for you.
					<%--	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					--%>
                    </p>
				</div>
			</div>
            
            
            <table style="margin:auto; width: 80%">
                <thead>
                    <tr>
                        
                        <th  style="text-align:center; width: 50%">
                            
                                <div class="single_service">
                                    <center>
                                        <span class="lnr lnr-rocket"></span>
                                        <a href="login.aspx">
                                            <h4>Fast Test</h4>
                                        </a>
                                    </center>
                                </div>
                        </th>

                        <th  style="text-align:center; width: 50%">
                            <div class="single_service">
                                <center>
                                    <span class="lnr lnr-heart-pulse"></span>
                                    <a href="login.aspx">
                                        <h4>Expert Consultation</h4>
                                    </a>
                                </center>
                            </div>
                        </th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>
                            <p style="text-align:center">
                                You Can Test Your Heart Health By Yourself Anytime, Anywhere.
                            </p>
                        </td>
                        <td>
                            <p style="text-align:center">
                                You Can Test Your Heart Health By Yourself Anytime, Anywhere.

                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>

			
		</div>
	</section>
         </form>
</asp:Content>
