<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DSMS.Content.Nonconformances.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ext:ResourceManager ID="ResourceManager1" runat="server">
    </ext:ResourceManager>

    <ext:Store ID="strNoncom" runat="server" OnReadData="strNoncom_RefreshData" PageSize="20">
        <Model>
            <ext:Model runat=server>
                <Fields>
                    <ext:ModelField Name="Title" />
                    <ext:ModelField Name="Opened By" />
                    <ext:ModelField Name="Status" />
                </Fields>
            </ext:Model>
        </Model>
    </ext:Store>

    <ext:Panel ID="pnlNonConformances" runat="server" Title="Nonconformances" Layout="FormLayout">
        <Items>
            <ext:GridPanel ID="gpOpenNonconformances" StoreID="strNonCom" runat="server" Title="Open Nonconformances">
                <ColumnModel runat=server>
                    <Columns>
                        <ext:Column runat=server Text="Title" DataIndex="Title" />
                        <ext:Column runat=server Text="Opened By" DataIndex="Opened By" />
                        <ext:Column runat=server Text="Status" DataIndex="Status" />
                    </Columns>
                </ColumnModel>
            </ext:GridPanel>
        </Items>
        
    </ext:Panel>
    
</asp:Content>
