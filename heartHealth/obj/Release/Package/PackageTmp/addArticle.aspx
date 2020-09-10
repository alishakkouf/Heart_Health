<%@ Page Title="" Language="C#" MasterPageFile="~/management.Master" AutoEventWireup="true" CodeBehind="addArticle.aspx.cs" Inherits="heartHealth.adminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
       addArticle
    </title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Consultations Management</h2>
                    <div class="page_link">
                        <a href="index.aspx">Home</a>
                        <a href="management.aspx">Management</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
   <%-- <asp:ScriptManager runat="server">

    </asp:ScriptManager>
    <asp:UpdatePanel runat="server">


        <ContentTemplate>--%>
       
    <h1 style="text-align:center">Add Article</h1><br />
           <div class="justify-content-center section-title-wrap">
    <h4>Title</h4><br />
    <textarea id="Textarea1" runat="server" class=""  cols="50"  placeholder="Title Of Article" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Title Of Article'"></textarea>
                        <br />
    
   <h4>Content</h4><br />
               <textarea id="Textarea2" runat="server" class="" rows="5" cols="50" placeholder="Content Of Article" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Content Of Article'"></textarea>
                        <br />
    <h4>Photo</h4><br />
    <asp:FileUpload ID="FileUpload1"   onchange="ShowButton();"  runat="server"  />
               <br /> <br />
               <%-- <asp:Button ID="Button2" runat="server" Text="review" class="main_btn text-uppercase" OnClick="Button2_Click"/>
               --%><br />
             <%--  <img src=""  id="image1" runat="server" alt="photo of article" />--%>
               <br /> <br />
                <asp:Button ID="Button1" runat="server" Text="ADD" class="main_btn text-uppercase" OnClick="Button1_Click"/>
               
               <asp:Label ID="Label1"  runat="server" ForeColor="Red" Text=""></asp:Label>
               <asp:Label ID="Label2" runat="server" ForeColor="Green" Text=""></asp:Label>
         
               </div>

        <%--    </ContentTemplate>
    </asp:UpdatePanel>--%>
        </form>
</asp:Content>
