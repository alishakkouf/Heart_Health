<%@ Page Title="" Language="C#" MasterPageFile="~/services.Master" AutoEventWireup="true" CodeBehind="single-blog.aspx.cs" Inherits="heartHealth.single_blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Single Blog </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Single Blog</h2>
                    <div class="page_link">
                        <a href="index.aspx">Home</a>
                        <a href="single-blog.aspx">Single Blog</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="blog_area single-post-area p_120">
        <div class="container">
         <div class="row">
            <div class="col-lg-8 posts-list">
                    <div class="single-post row">
                        <div class="col-lg-12">
                              <div class="feature-img">
                                <img class="img-fluid" src="" id="image" runat="server" alt="">
                              
                            </div>
                        </div>
                    </div>
                 <div class="col-lg-9 col-md-9 blog_details">
                            <h2>
                     <asp:Label ID="title" runat="server" Text=""></asp:Label></h2>
                           <p>
                         <asp:Label ID="content" runat="server" Text=""></asp:Label></p>
                        </div>
                    </div>
              <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                          <%--  <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search Posts">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="lnr lnr-magnifier"></i>
                                    </button>
                                </span>
                            </div>--%>
                            <!-- /input-group -->
                            <div class="br"></div>
                        </aside>
                        <aside class="single_sidebar_widget author_widget">
                            <img class="author_img rounded-circle" src="img/blog/author.png" alt="author">
                            <h4>Charlie Barber</h4>
                            <p>Senior blog writer</p>
                            <div class="social_icon">
                                <a href="#">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-twitter"></i>
                                </a>
                               
                            </div>
                            <p>I wish you find my article usefyl for you..
                            </p>
                            <div class="br"></div>
                        </aside>
                        </div>
                  </div>
             
                </div>
            </div>
     
              
        </section>
</asp:Content>
