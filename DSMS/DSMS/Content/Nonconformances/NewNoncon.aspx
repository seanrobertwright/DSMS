<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewNoncon.aspx.cs" Inherits="DSMS.Content.Nonconformances.NewNoncon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <ext:ResourceManager ID="ResourceManager1" runat="server">
    </ext:ResourceManager>

    <ext:Viewport ID="vpNewNoncon" runat="server" Layout="border">
    <LayoutConfig>
        <ext:VBoxLayoutConfig Align=Center Pack=Center />    
    </LayoutConfig>
        <Items>
            <ext:FormPanel runat=server Title="New Nonconformance" Frame=true Width="640" Height="640" Border="false" BodyPadding="10" DefaultAnchor="100%">
                <FieldDefaults LabelAlign=Top LabelWidth="100" LabelStyle="font-weight:bold;" />
                <Items>
                    <ext:FieldContainer runat=server FieldLabel="Employee Name" LabelStyle="font-weight:bold;padding:0;" Layout="HBoxLayout">
                        <FieldDefaults LabelAlign=Top />
                        <Items>
                            <ext:TextField runat=server Name="firstName" Flex="1" FieldLabel="First" AllowBlank=false />
                            <ext:TextField runat=server Name="lastName" Flex="1" FieldLabel="Last" AllowBlank=false />
                        </Items>
                    </ext:FieldContainer>

                    <ext:TextArea runat=server FieldLabel="Description" Flex="1" Name="description" Margins="0" AllowBlank=false />

                </Items>
                <Buttons>
                    <ext:Button ID="Button1" runat="server" Text="Cancel" />
                    <ext:Button ID="Button2" runat="server" Text="Send" />
                </Buttons>
            </ext:FormPanel>
                
        </Items>
    </ext:Viewport>

</asp:Content>
