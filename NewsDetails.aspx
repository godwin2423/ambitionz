<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewsDetails.aspx.cs" Inherits="Ambitionz2.NewsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
   <%-- <h3>News</h3>--%>
     <table style="width:100%">
            <tr>
                <td align="center" style="text-align:center" >
        <asp:Label ID="lblTitle" runat="server" CssClass="title1" Font-Bold="True"></asp:Label>
        </td>
            </tr>
            <tr>
                <td style="text-align: right;padding-bottom:10px;">
                <asp:Label ID="lblDate" runat="server"  Font-Italic="True" 
                        Font-Size="Small"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" height="250" style="vertical-align:text-top">
       <asp:Literal ID="litContents" runat="server"></asp:Literal>
       </td>
            </tr>
   
      </table>
</asp:Content>

