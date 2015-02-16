<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="News.aspx.cs" Inherits="Ambitionz2.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <h1>
        Articles</h1>
    <div class="indent">
        <asp:Label ID="lblNoRecords" runat="server" CssClass="noRecords"></asp:Label>
        <asp:GridView ID="dtgNews" runat="server" Width="100%" AutoGenerateColumns="False"
            DataKeyNames="newsid" CssClass="GridViewStyle" ShowHeader="False" GridLines="None">
            <RowStyle CssClass="GridViewRowStyle" Height="24px" />
            <Columns>
                <asp:TemplateField HeaderText="Sl.No.">
                    <ItemTemplate>
                        <%# Container.DataItemIndex+1 %>.
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Width="50px" />
                    <ItemStyle HorizontalAlign="Center" Width="20px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="New Title">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbTitle" PostBackUrl='<%# "NewsDetails.aspx?newsid=" +Eval("NewsID") %>'
                            runat="server"><%# Eval("Title") %></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Left" Width="570px" />
                </asp:TemplateField>
            </Columns>
            <PagerStyle CssClass="GridViewPagerStyle" />
            <RowStyle CssClass="GridViewRowStyle" />
            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
            <HeaderStyle CssClass="GridViewHeaderStyle" />
            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" Height="24px" />
        </asp:GridView>
    </div>
</asp:Content>
