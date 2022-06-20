<%@ Page Title="Cassverify.svc Example" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SvcExample.aspx.cs" Inherits="CassVerifyExample.SvcExample" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <p>
        This form uses: cassverify.state.ak.us/cassverify.svc
    </p>
    <h2>Enter an Address</h2>
    <div class="row">
        <div class="col-md-2">
            <asp:Label ID="Label1" runat="server" Text="Line 1:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Label ID="Label2" runat="server" Text="Line 2:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Label ID="Label3" runat="server" Text="City:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Label ID="Label4" runat="server" Text="State:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Label ID="Label5" runat="server" Text="Zip:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style2"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Button ID="Button1" runat="server" Text="Submit" BorderStyle="Solid" ToolTip="Submit" OnClick="Button1_Click" />
        </div>
    </div>

    <h2>Results</h2>
    <div class="row">
        <div class="col-md-2">Line 1:</div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltLine1" runat="server"></asp:Label></div>
    </div>
    <div class="row">
        <div class="col-md-2">Line 2:</div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltLine2" runat="server"></asp:Label></div>
    </div>
    <div class="row">
        <div class="col-md-2">City, State, Zip: </div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltCityStateZip" runat="server"></asp:Label></div>
    </div>
    <div class="row">
        <div class="col-md-2">Comments: </div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltComments" runat="server"></asp:Label></div>
    </div>
    <div class="row">
        <div class="col-md-2">Finalist Return Code:</div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltFinalistReturnCode" runat="server"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">DPV CRMA Flag: </div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltDPVCRMAFlag" runat="server"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">DPV False Positive Flag: </div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltDPVFalsePosFlag" runat="server"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">DPV Flag: </div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltDPVFlag" runat="server"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">DPV Footnotes: </div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltDPVFootnotes" runat="server"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">DPV Delivery Point: </div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltDeliveryPt" runat="server"></asp:Label>
        </div>
    </div>

    
</asp:Content>
