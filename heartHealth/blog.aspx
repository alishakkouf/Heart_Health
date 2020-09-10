<%@ Page Title="" Language="C#" MasterPageFile="~/services.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="heartHealth.blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
        Blog
    </title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--================ Home Banner Area =================-->
	<section class="home_banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content row">
					<div class="col-lg-12">
						<h1>We Care for Your Health Every Moment</h1>
						<p>If you are looking at blank cassettes on the web, you may be very confused at the difference in price You may see some
							for as low as each.</p>
						<a class="main_btn mr-10" href="services.aspx">get started</a>
					</div>
                    <br/>
                    
                    </div>
                    
			</div>
		</div>
	</section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    
    <br />
    <section class="recent-blog-area section_gap">
   
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>Our Articles</h1>
					<p>
						Any Article You Want.
					</p>
                    <span  >
                        <input type="text" class="form-control" name="search" placeholder="Search" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search'">
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Search" class="main_btn text-uppercase" OnClick="Button1_Click" >
                            <%--<i class="lnr lnr-magnifier"></i>--%>
                        </asp:Button>
                    </span>
				</div>
			</div>
        </div>
    </section>
</asp:Content>

