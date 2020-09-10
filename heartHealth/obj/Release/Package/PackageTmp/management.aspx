<%@ Page Title="" Language="C#" MasterPageFile="~/management.Master" AutoEventWireup="true" CodeBehind="management.aspx.cs" Inherits="heartHealth.management1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
        Management
    </title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--================Home Banner Area =================-->
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
    
           <br />
              <h2 style="text-align:center">New Consultations</h2>
            <br />
 <asp:ScriptManager runat="server">
     
 </asp:ScriptManager>
  
    <asp:UpdatePanel id="UpdatePanel1" runat="server" UpdateMode="Conditional" AutoPostBack="true" ChildrenAsTriggers="true">
       <Triggers>
           <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="SelectedIndexChanged"/>
       </Triggers>
        <ContentTemplate>
            <br /><br />
            <div class="row justify-content-center section-title-wrap">
                <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoPostback="false">

                    <Columns>
                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                        <asp:BoundField HeaderText="id" DataField="idQuestion"></asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"></asp:BoundField>

                        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                        <asp:BoundField DataField="Qtext" HeaderText="Question" SortExpression="Qtext"></asp:BoundField>
                        <asp:BoundField DataField="medicalHistory" HeaderText="medicalHistory" SortExpression="medicalHistory"></asp:BoundField>
                        <asp:BoundField DataField="E_malil" HeaderText="E_mail" SortExpression="E_malil" />
                        <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                        <asp:BoundField DataField="data_of_birth" HeaderText="date_of_birth" SortExpression="data_of_birth" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
      
          
            </div>
         
     
   
              
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:data_admConnectionString %>' SelectCommand="SELECT questions.date, questions.Qtext, questions.medicalHistory, patient.Fname, patient.Lname, patient.E_malil, patient.sex, patient.data_of_birth, questions.idQuestion FROM questions INNER JOIN patient ON questions.id_patient = patient.idPatient WHERE (questions.flag = 0) ORDER BY questions.date DESC">
    </asp:SqlDataSource>
   

    <br />
    <table style="align-content:center; margin:auto; width: 80%">
        <thead style=" padding: 10px; border-bottom: 2px solid; text-align: center">
              <tr>
                  <th style="text-align:center; width: 15%">
                       <h3 >
                          Replay
                      </h3>
                  </th>
                  <th  style="text-align:center; width: 25%">
                      <h3 >
                          The Consultation
                      </h3>
                  </th>
                  <th  style="text-align:center; width: 20%">
                      <h3 >
                          Medical History
                      </h3>
                  </th>
               <%--   <th  style="text-align:center; width: 10%">
                      <h3 >
                          Date
                      </h3>
                  </th>--%>
                  </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                     <div>
                           <%--<asp:TextBox ID="TextBox1" runat="server" rows="5" cols="50" placeholder="Consultation" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Consultation'"></asp:TextBox>
                           --%> <textarea id="Textarea1" runat="server" class="" rows="5" cols="50" placeholder="Replay Here ..." onfocus="this.placeholder = ''" onblur="this.placeholder = 'Replay Here ...'"></textarea>
                        </div>
                    
                   
                </td>
                <td >
                        <div>
                           <%--<asp:TextBox ID="TextBox1" runat="server" rows="5" cols="50" placeholder="Consultation" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Consultation'"></asp:TextBox>
                           --%> <textarea id="consulation" runat="server" class="" rows="5" cols="50" placeholder="Consultation" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Consultation'" readonly="readonly"></textarea>
                        </div>
                </td>
                <td>
                     <div>
                       <%-- <asp:TextBox ID="TextBox2" runat="server" rows="5" cols="50" placeholder="MedicalHistry" onfocus="this.placeholder = ''" onblur="this.placeholder = 'MedicalHistry'"></asp:TextBox>
                       --%>     <textarea id="medicalhistory" runat="server" class="" rows="5" cols="50" placeholder="MedicalHistry" onfocus="this.placeholder = ''" onblur="this.placeholder = 'MedicalHistry'" readonly="readonly"></textarea>
                        </div>
                </td>
            </tr>
            <tr>
                <td>
                     <div class="text-center confirm_btn_box">
                        <asp:Button ID="Button1" runat="server" Text="Reply" class="main_btn text-uppercase" OnClick="Button1_Click"/>
                        
                    </div>

                </td>
            </tr>
        </tbody>
     </table>
              </ContentTemplate>
     </asp:UpdatePanel>
    <br />
    <hr />
     <br />
              <h2 style="text-align:center">Manage Articles</h2>
            <br />
     <div class="text-center confirm_btn_box">
                        <asp:Button ID="Button2" runat="server" Text="Add Article" class="main_btn text-uppercase" OnClick="Button2_Click2"/>
                        &nbsp&nbsp  <asp:Button ID="Button3" runat="server" Text="Update Article" class="main_btn text-uppercase" OnClick="Button3_Click"/>
                        &nbsp&nbsp<asp:Button ID="Button4" runat="server" Text="Delete Article" class="main_btn text-uppercase" OnClick="Button4_Click"/>
                      
                    </div>
 <%--   <h2 style="text-align:center">Responded Consultations</h2>
    <br />
   
    <br />
    <table style="align-content:center; margin:auto; width: 80%">
        <thead style=" padding: 10px; border-bottom: 2px solid; bo text-align: center">
              <tr>
                  <th style=" width: 15%" >
                      
                  </th>
                  <th  style="text-align:center; width: 45%">
                      <h4 >
                          The Consultation
                      </h4>
                  </th>
                  <th  style="text-align:center; width: 10%">
                      <h3 >
                          Username
                      </h3>
                  </th>
                  <th  style="text-align:center; width: 10%">
                      <h3 >
                          Date
                      </h3>
                  </th>
                  </tr>
            </thead>
        <tbody>
            <tr>
                <td>
                    <br />
                    <div class="text-center confirm_btn_box">
                        <asp:Button ID="Button2" runat="server" Text="Delete" class="main_btn text-uppercase" OnClick="Button2_Click"/>
                        
                    </div>
                </td>
            </tr>
        </tbody>
     </table>
    <br />
    <br />--%>
        </form>
</asp:Content>
