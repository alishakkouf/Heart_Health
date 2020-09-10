<%@ Page Title="" Language="C#" MasterPageFile="~/services.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="heartHealth.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Login </title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Login</h2>
                    <div class="page_link">
                        <a href="index.aspx">Home</a>
                        <a href="login.aspx">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <table style="margin:auto; width: 60%;"> 

    <thead>
        <tr>
            <th class="col-lg-5 col-md-6 appointment-left" style="text-align:center">
                <h1 style="text-align:center">
                    Login
                </h1>
                <p>
                    You are welcome.
                </p>
            </th>
            </thead>
    <tbody>
        <tr>
            <td>
                <input type="text" class="form-control" name="email" id="email" placeholder="E_mail*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'E_mail*'">
                <br />
                <input type="password" class="form-control" name="password" id="password" placeholder="Password*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password*'">
                <br />
                <div class="text-center confirm_btn_box">
                  
                    <asp:Button ID="Button1" runat="server" Text="Confirm" class="main_btn text-uppercase" OnClick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br /> <br />
                    <p>if you don't have account !! Register here ... 
                        <a href="sign_up.aspx">Sign Up</a>
                    </p>
                    
                    
                </div>
            </td>
        </tr>
    </tbody>
    </table>
    <br />
    <br />

</asp:Content>
