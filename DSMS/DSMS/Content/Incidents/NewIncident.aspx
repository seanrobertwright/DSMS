<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="NewIncident.aspx.cs" Inherits="DSMS.Content.Incidents.NewIncident" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ext:ResourceManager runat="server">
    </ext:ResourceManager>
    <ext:FormPanel runat="server" ButtonAlign="Right" Height="185" Padding="5" Title="New Incident"
        LazyMode="Default" Layout="HBoxLayout">
        <FieldDefaults LabelAlign="Top" MsgTarget="Side">
        </FieldDefaults>
        <Defaults>
            <ext:Parameter Name="Border" Value="false" />
            <ext:Parameter Name="Flex" Value="1" />
            <ext:Parameter Name="Layout" Value="anchor" />
        </Defaults>
        <Items>
            <ext:Panel runat=server>
                <Items>
                    <ext:TextField runat="server" FieldLabel="Last Name:" AnchorHorizontal="-5"/>
                    <ext:DateField ID="DateField1" runat="server" FieldLabel="Date of Occurrence:" AnchorHorizontal="-5">
                    </ext:DateField>
                </Items>
            </ext:Panel>
            <ext:Panel runat=server>
                <Items>
                    <ext:TextField runat="server" FieldLabel="First Name:" AnchorHorizontal="100%" />
                    <ext:TimeField ID="TimeField1" runat="server" FieldLabel="Time:" AnchorHorizontal="100%">
                    </ext:TimeField>
                </Items>
            </ext:Panel>
        </Items>
        <Buttons>
            <ext:Button runat="server" Icon="Disk" Text="Submit" />
        </Buttons>
    </ext:FormPanel>
</asp:Content>
