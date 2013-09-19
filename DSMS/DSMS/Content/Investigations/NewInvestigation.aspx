<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewInvestigation.aspx.cs" Inherits="DSMS.Content.Investigations.NewInvestigation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ext:ResourceManager ID="ResourceManager1" runat="server">
    </ext:ResourceManager>
<h1><b>New Investigation</b></h1>
    <ext:TabPanel ID="TabPanel1" runat="server" Height="300">
        <Items>
            <ext:Panel ID="Panel1" runat="server" Title="Tab 1">
                <Items>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel2" runat="server" Title="Tab 2">
                <Items>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel3" runat="server" Title="Tab 3">
                <Items>
                </Items>
            </ext:Panel>
        </Items>
    </ext:TabPanel>
</asp:Content>
