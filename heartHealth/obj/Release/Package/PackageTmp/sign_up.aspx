<%@ Page Title="" Language="C#" MasterPageFile="~/services.Master" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="heartHealth.sign_up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Sing Up </title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Sign Up</h2>
                    <div class="page_link">
                        <a href="index.aspx">Home</a>
                        <a href="sign up.aspx">Sign up</a>
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
            <th style="text-align:center">
                <h1>
                    Sign up
                </h1>
                <p>
                    You should sing up to benefit our services.
                </p>
            </th>
            </thead>
    <tbody>
        <tr>
            <td>
                <input type="text" class="form-control" name="Fname" placeholder="First Name*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name*'">
                <input type="text" class="form-control" name="Lname" placeholder="Last Name*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name*'"> 
                <input type="email" class="form-control" name="email" placeholder="Email Address*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address*'">
                <input type="password" class="form-control" name="password" placeholder="Password*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password*'">
                <input type="text" class="form-control" name="phone" placeholder="Phone*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone*'">
				<input type="text" class="form-control" name="mobile" placeholder="mobile*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'mobile*'">
                <input type="text" class="form-control" name="age" placeholder="Age must be like 1996-01-25 yyyy-mm-dd*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Age*'">
               
                <div class="form-select" id="service-select">
                    <select name="sex">
                        <option data-display="">Sex*</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
		            </select>
                </div>
                <%--<div>
                    <textarea style="width:100%" name="messege" class="" rows="5"  placeholder="Medical History (Mention any previous diseases)*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Medical History (Mention any previous diseases)*'"></textarea>
	            </div>
                <div>
                    <textarea name="messege" class="" rows="5" style="width:100%" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege*'"></textarea>
                </div>--%>
                <%-- Captcha image --%>
                <%--<div id="fscf_captcha_image_div1" style="width:250px; height:65px; padding-top:2px;">
                    <img  style="border-style:none; margin:0; padding:0px; padding-right:5px; float:right;" src="" width="175" height="60" alt="CAPTCHA" title="CAPTCHA">
                    <div id="fscf_captcha_refresh1">
                    <a href="#" rel="nofollow" title="Refresh" onclick="fscf_captcha_refresh('1','/wp-content/plugins/si-contact-form/captcha','http://www.2lbak.com/wp-content/plugins/si-contact-form/captcha/securimage_show.php?prefix='); return false;">
                    <img src="http://www.2lbak.com/wp-content/plugins/si-contact-form/captcha/images/refresh.png" width="22" height="20" alt="Refresh" style="border-style:none; margin:0; padding:0px; vertical-align:bottom;" onclick="this.blur();"></a>
                    </div>--%>
                <div>
                    <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/Captcha.aspx" Width="186px" />
                    <input type="text" class="form-control" name="captcha_code" id="captcha_code" runat="server" autocomplete="off" placeholder="Enter Code*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Code*'">
                    <%--<input style="text-align:right; margin:0; width:50px;" type="text" value="" autocomplete="off" id="fscf_captcha_code1" name="captcha_code"> --%>
                </div>
                <br />
                <div class="text-center confirm_btn_box">
                    <asp:Button ID="Button1" runat="server" Text="Confirm" class="main_btn text-uppercase" OnClick="Button1_Click"/>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
            </td>
        </tr>
    </tbody>
    </table>
    <br />
</asp:Content>
