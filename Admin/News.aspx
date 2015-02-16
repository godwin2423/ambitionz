<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Ambitionz2.Admin.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .style1
        {
            width: 90px;padding-top:5px;
        }
        .style2
        {
            width: 680px;padding-top:5px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
<h1><span><span>News</span></span></h1>
    <div class="indent">
    <table width="770px">
        <tr>
            <td class="style1">Subject</td>
            <td class="style2">
                <asp:DropDownList ID="ddlSubject" runat="server">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="1">English</asp:ListItem>
                    <asp:ListItem Value="2">GK</asp:ListItem>
                    <asp:ListItem Value="3">IT</asp:ListItem>
                    <asp:ListItem Value="4">Science</asp:ListItem>
                    <asp:ListItem Value="5">Current Affais</asp:ListItem>
                    <asp:ListItem Value="6">Constitution</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="ddlSubject" InitialValue="0" ErrorMessage="*" ValidationGroup="vg1"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style1">Title</td>
            <td class="style2">
                <asp:TextBox ID="txtTitle" runat="server" MaxLength="380"  
                    ValidationGroup="vg1" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf1" runat="server" 
                    ControlToValidate="txtTitle" ErrorMessage="*" ValidationGroup="vg1"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style1"></td>
            <td class="style2" align="right">
                <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn" 
                    onclick="btnBack_Click"  />
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn" 
                        ValidationGroup="vg1" onclick="btnSave_Click" />
            </td>
        </tr>
    </table>
    </div>            
</asp:Content>



