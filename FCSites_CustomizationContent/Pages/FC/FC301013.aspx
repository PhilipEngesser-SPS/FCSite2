<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="FC301013.aspx.cs" Inherits="Page_FC301013" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="FCSites.SiteMaint3"
        PrimaryView="SiteView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="SiteView" Width="100%" Height="100px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXDropDown runat="server" ID="CstPXDropDown4" DataField="SiteStatus" />
			<px:PXTextEdit runat="server" ID="CstPXTextEdit2" DataField="SiteName" ></px:PXTextEdit></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="projectList">
			    <Columns>
				<px:PXGridColumn DataField="CustomerID_description" Width="280" />
				<px:PXGridColumn DataField="CustomerID_Customer_acctName" Width="280" />
				<px:PXGridColumn DataField="ContractID" Width="70" />
				<px:PXGridColumn DataField="ContractCD" Width="70" />
				<px:PXGridColumn DataField="Balance" Width="100" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
</asp:Content>
