<%@ Page Title="Service.asmx Example" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AsmxExample.aspx.cs" Inherits="CassVerifyExample.AsmxExample" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        This form uses: cassverify.state.ak.us/service.asmx
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
        <div class="col-md-2">CASS Verified?: </div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltCassVerified" runat="server"></asp:Label></div>
    </div>
    <div class="row">
        <div class="col-md-2">Return Code:</div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltReturnCode" runat="server"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">General Return Code: </div>
        <div class="col-md-5">
            <asp:Label ID="lblRsltGeneralRC" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
