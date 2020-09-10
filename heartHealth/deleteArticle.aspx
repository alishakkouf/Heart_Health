<%@ Page Title="" Language="C#" MasterPageFile="~/management.Master" AutoEventWireup="true" CodeBehind="deleteArticle.aspx.cs" Inherits="heartHealth.editArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
    <%--    <asp:ScriptManager runat="server"></asp:ScriptManager>
        <br /> <br /><br />
        <asp:UpdatePanel runat="server">
       
            <ContentTemplate>--%>
        <div class="container">
            
            
                <br />  <br />
                  <table style="margin:auto; width: 60%;"> 

    <thead>
        <tr>
            <th style="text-align:center">
              <h3 style="color:red">Select Article</h3>
            </th>
            </thead>
    <tbody>
        <tr>
           
            <td >
                <div class="form-select">
             <asp:DropDownList  ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="idArticle" AutoPostBack="true" OnSelectedIndexChanged="show"></asp:DropDownList>
           </div>
                </td>
           <%-- <td>
                <select class="form-select" id="select" runat="server"   datasourceid="SqlDataSource1" datatextfield="title" datavaluefield="idArticle"  OnServerChange="select1_ServerChange"  >
                    <option data-display="article title"></option>
                </select>
            </td--%>>
        </tr>
    </tbody>
    </table>               
     <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:data_admConnectionString %>' SelectCommand="SELECT * FROM [article]"></asp:SqlDataSource>
             </div>

          

       
                 <br /><br />  <br /><br />
                 <table style="align-content:center; margin:auto; width: 80%">
          <thead style=" padding: 10px; border-bottom: 2px solid; text-align: center">
              <tr>
                  <%-- <th style="text-align:center; width: 20%">
                       <h3 >
                          Title
                      </h3>
                  </th>--%>
                   <th style="text-align:center; width: 40%">
                       <h3 >
                          Content
                      </h3>
                  </th>
                   <th style="text-align:center; width: 40%">
                       <h3 >
                          Photo
                      </h3>
                  </th>
              </tr>
          </thead>
          <tbody>
              <tr>
                 <%-- <td>
                       <textarea id="Textarea1" runat="server" class=""  cols="50" placeholder="Title Of Article" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Title Of Article'"></textarea>
     
                  </td>--%>
                  <td>
                       <textarea id="Textarea2" runat="server" class="" rows="5" cols="50" placeholder="Content Of Article" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Content Of Article'"></textarea>
   
                  </td>
                  <td>
                      <img src="" id="image" runat="server" alt="photo of article" />
                  </td>
              </tr>
          </tbody>
      </table>
           
      <%-- </ContentTemplate>
            </asp:UpdatePanel>--%>
            <br />
        <br />
        <br />
        <div  class="text-center confirm_btn_box">
         <%-- <asp:Button ID="Button1" runat="server" Text="Updata" class="main_btn text-uppercase" OnClick="Button1_Click"/>
         --%> &nbsp&nbsp<asp:Button ID="Button2" runat="server" Text="Delete" class="main_btn text-uppercase" OnClick="Button2_Click"/>
                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>         
            </div>
 
        
    
    
    </form>
</asp:Content>
