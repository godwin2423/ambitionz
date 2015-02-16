<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ambitionz2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    input[type=text],input[type=password]{width:175px;}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Login</h1>

<div style="background:#ff9900; height:100px;width:280px; padding:20px;margin:0 auto;">
       <asp:Login ID="LoginBox" runat="server" BorderColor="#CCCC99" 
           BorderWidth="0px" FailureText="Login failed!" Font-Bold="False"
        Height="120px" OnAuthenticate="LoginBox_Authenticate" TitleText=""
        Width="284px" BorderPadding="0" Font-Names="Tahoma" Font-Size="Small" 
           ForeColor="White" RememberMeText="  Remember me next time." 
           UserNameLabelText="User Name &nbsp;&nbsp;" 
           PasswordLabelText="Password &nbsp;&nbsp;" 
          >
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
           <CheckBoxStyle HorizontalAlign="Center" VerticalAlign="Middle" />
           <TextBoxStyle CssClass="txt" />
           <LoginButtonStyle BackColor="Transparent" BorderWidth="0px" />
    </asp:Login>
</div> 
            
</asp:Content>

