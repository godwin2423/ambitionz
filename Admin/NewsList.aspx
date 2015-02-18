<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="Ambitionz2.Admin.NewsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">

        .style1
        {
            height: 33px;
            width: 850px;
        }
        .style2
        {
        }
        .style3
        {
            width: 69px;
        }
        .style4
        {
            width: 671px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
<h1><span><span>News</span></span></h1>
    <div class="indent">

    <asp:DropDownList ID="ddlSubject" runat="server" AutoPostBack="true"
            onselectedindexchanged="ddlSubject_SelectedIndexChanged">
        <asp:ListItem Value="0">Select</asp:ListItem>
        <asp:ListItem Value="1">English</asp:ListItem>
        <asp:ListItem Value="2">GK</asp:ListItem>
        <asp:ListItem Value="3">IT</asp:ListItem>
        <asp:ListItem Value="4">Science</asp:ListItem>
        <asp:ListItem Value="5">Current Affais</asp:ListItem>
        <asp:ListItem Value="6">Constitution</asp:ListItem>
        <asp:ListItem Value="7">Economic</asp:ListItem>
        <asp:ListItem Value="8">Geography</asp:ListItem>
    </asp:DropDownList>

    <center><asp:Label ID="lblNoRecords" runat="server" CssClass="noRecords"></asp:Label></center>
 <asp:GridView ID="dtgNews" runat="server" GridLines="None"
        AllowPaging="True" AutoGenerateColumns="False" CssClass="GridViewStyle2" 
        OnPageIndexChanging="dtgNews_PageIndexChanging" 
        onrowcommand="dtgNews_RowCommand" PageSize="25">
                                <RowStyle CssClass="GridViewRowStyle2" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Sl.No.">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="80px" />
                                        <ItemStyle HorizontalAlign="Center" Width="80px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Title" HeaderText="New Title">
                                        <HeaderStyle HorizontalAlign="Center" Width="700px" />
                                        <ItemStyle HorizontalAlign="Left" Width="800px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ibtEdit" runat="server" CommandArgument='<%# Eval("NewsID") %>' CommandName="newsedit" ImageUrl="~/images/edit.png" OnClientClick="return confirm('Are you sure you want to edit ?');" />
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="80px" />
                                        <ItemStyle HorizontalAlign="Center" Width="80px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ibtDelete" runat="server" CommandArgument='<%# Eval("NewsID") %>' CommandName="newsdelete" ImageUrl="~/images/delete.png" OnClientClick="return confirm('Are you sure you want to delete ?');" />
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="80px" />
                                        <ItemStyle HorizontalAlign="Center" Width="80px" />
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle CssClass="GridViewPagerStyle" />
                                <HeaderStyle CssClass="GridViewHeaderStyle2" />
                                <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle2" />
                            </asp:GridView>
                      <br />
 
        <center><asp:Button ID="btnAddNew" runat="server" Text="Add New" CssClass="btn" 
            onclick="btnAddNew_Click" /></center>
                </div>
                                                         
</asp:Content>


