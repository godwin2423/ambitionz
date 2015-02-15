<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ambitionz2.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    #abt{background-color:transparent;width: 900px;padding:0;margin-top:0;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div id="catagory1">
        <img class="fl" src="images/icon_01.png" width="62" height="62">
        <h3>
            About Binhindi</h3>
        <p>
            Bin Hindi for Technology (BHT) was founded in 2007, as a division of Bin Hindi Group
            of companies(Bin Hindi for Technology, Bin Hindi Constructions, Bin Hindi Trading),
            BHT was <a class="fr" href="abt.html">Read more..</a></p>
    </div>
    <div id="catagory2">
        <img class="fl" src="images/icon_02.png" width="62" height="62">
        <h3>
            Vision &amp; Mission</h3>
        <p>
            We! As a promising company keep ourselves in par with the technology innovators
            to provide our clients and customers with the latest technology in order for them
            to be in<a class="fr" href="vision.html">Read more..</a></p>
    </div>
    <div id="catagory3" class="removeMarginRight">
        <img class="fl" src="images/icon_03.png" width="62" height="62">
        <h3>
            News & Events</h3>
        <%--<p>
            Gitex Saudi Arabia 2013 16-19 Nov 2013
            <br>
            <br>
            GESS 2014 4-6 March 2014 <a class="fr" href="news.html">Read more..</a></p>--%>
         <%--<marquee runat="server" loop="true"  direction="up" OnMouseOver='this.stop();' OnMouseOut='this.start();' scrollamount="3" width="100%" style="text-align: justify;" id="MARQUEE1" >--%>
            <asp:Repeater ID="rptNews" runat="server">
                <ItemTemplate>
                    <p><a href='<%# "NewsDetails.aspx?newsid=" + Eval("NewsID") %>' ><%# Eval("Title")%></a></p>
                </ItemTemplate>
            </asp:Repeater> 
            <p><a class="fr" href="News.aspx">Read more..</a></p> 
        <%--</marquee>--%>
    </div>
</asp:Content>
