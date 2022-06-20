<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CassVerifyExample._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>CASSVerify Examples</h2>

    <p>CASSVerify is an address verification service. There are 2 versions of the CASSVerify service. The difference between them is the fields and format that are returned. Both are SOAP APIs.</p>
    <ul>
        <li><a runat="server" href="~/SvcExample">cassverify.state.ak.us/cassverify.svc</a></li>
        <li><a runat="server" href="~/AsmxExample">cassverify.state.ak.us/service.asmx</a></li>
    </ul>

</asp:Content>
