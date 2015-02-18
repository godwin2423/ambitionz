<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="NewsDetails.aspx.cs" Inherits="Ambitionz2.NewsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td p
        {
            margin: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <h1>
        <asp:Label ID="lblTitle" runat="server" CssClass="title1" Font-Bold="True"></asp:Label></h1>
    <asp:Literal ID="litContents" runat="server"></asp:Literal>
</asp:Content>
