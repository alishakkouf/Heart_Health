<%@ Page Title="" Language="C#" MasterPageFile="~/services.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="heartHealth.services1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Services</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    EnableEventValidation=false;
<section class="home_banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content row">
					<div class="col-lg-12">
						<h1>We Care for Your Health Every Moment</h1>
						<p>If you are looking at blank cassettes on the web, you may be very confused at the difference in price You may see some
							for as low as each.</p>
						<%--<a class="main_btn mr-10" href="services.aspx">get started</a>--%>
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
 
   
       
        
             <table style="margin:auto; width: 80%">
        <thead>
              <tr>
                  <th  style="text-align:center; width: 50%">
                      <h2 >
                          ASK FOR CONCULTATION
                      </h2>
                  </th>
                  <th  style="text-align:center; width: 50%">
                      <h2 >
                          TEST YOUR HEART
                      </h2>
                  </th>
              </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                 
                    <center>
                        <div>
                            <textarea name="Medical_History" class="" rows="5" cols="50" placeholder="Medical History (Mention any previous diseases)*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Medical History (Mention any previous diseases)*'"></textarea>
                        </div>
                       <br />
                        <div>
                            <textarea name="messege" class="" rows="5" cols="50" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege*'"></textarea>
                        </div>
                        
                        
                    </center>
                  
                </td>
                <td>
                   
                <br /><br />

                     
                 
                    <div class="appointment-right">
                    <div class="form-wrap">
                    <input type="text" class="form-select" name="age" placeholder="Age* ex: 45" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Age* ex: 45'">
                    <br />   <br />
                   
                 
                    	<div class="form-select" id="service-select">
								<select name="chest_pain_type">
									<option data-display="Disease Type" class="form-select"></option>
									<option value="1">non_anginal</option>
									<option value="2">atyp_angina</option>
									<option value="3">asympt</option>
									
								</select>
                          
							</div>
                   <%-- <input type="text" class="form-control" name="chest_pain_type" placeholder="Chest pain type*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Chest pain type*'">--%>
                    <br />  <br />
                    <input type="text" class="form-select" name="rest_blood_pressure" placeholder="Rest blood pressure*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Rest blood pressure*'">
                    <br />  <br />
                    	<div class="form-select" <%--id="service-select"--%>>
								<select name="blood_sugar">
									<option data-display="blood_sugar"></option>
									<option value="1">true</option>
									<option value="2">false</option>
								
								</select>
							</div>
                    <br />  <br />
                    <%--<input type="text" class="form-control" name="rest_electro" placeholder="Rest electro*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Rest electro*'">--%>
                    <div class="form-select" <%--id="service-select"--%>>

								<select name="rest_electro">
									<option data-display="rest_electro"></option>
									<option value="1">normal</option>
									<option value="2">left_vent_hyper</option>
                                    <option value="3">st_t_wave_abnormality</option>
								
								</select>
							</div>
                    
                    <br />  <br />
                    <input type="text" class="form-select" name="max_heart_rate" placeholder="Max heart rate*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Max heart rate*'">
                    <br />  <br />
                   <%-- <input type="text" class="form-control" name="exercice_angina" placeholder="Exercice angina*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Exercice angina*'">--%>
                  <div class="form-select" <%--id="service-select"--%>>

								<select name="exercice_angina">
									<option data-display="exercice_angina"></option>
									<option value="1">yes</option>
									<option value="2">no</option>
                                    
								
								</select>
							</div>
                    <br />
                    <br />
                        </div></div>
                     
                </td>
            </tr>
            <tr>
                <td>
                    <div class="text-center confirm_btn_box">
                    <asp:Button ID="Button1" runat="server" Text="Send" class="main_btn text-uppercase" OnClick="Button1_Click" />
                       <br />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    
                        
                    </div>
                </td>
                <td>
                    <center> 
                        <span class="text-center confirm_btn_box">
                            <asp:Button ID="Button2" runat="server" Text="Bayes" class="main_btn text-uppercase" OnClick="Button2_Click"/>
                            
                        </span>
                    
                        <span class="text-center confirm_btn_box">
                            <asp:Button ID="Button3" runat="server" Text="ID3" class="main_btn text-uppercase" OnClick="Button3_Click"></asp:Button>
                            <br />
                           
                        </span>
                    </center>
                </td>
            </tr>
        </tbody>
    </table>
       <br />
    <br />
    <table style="margin:auto; width: 80%">
        <tr>
            <td style="text-align:center; width: 50%"></td>
            <td style="text-align:center; width: 50%">
                 <div style="" >
                             <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="Label8" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="Label9" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="Label6" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="Label7"  runat="server" Text=""></asp:Label>
       </div>
            </td>
        </tr>
    </table>
      
   

    <br />
    <br />
</asp:Content> 
