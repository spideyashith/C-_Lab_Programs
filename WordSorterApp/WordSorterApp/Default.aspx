<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WordSorterApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Word Sorter</h2>

    <asp:Label ID="Label1" runat="server" Text="Enter a sentence:"></asp:Label><br />
    <asp:TextBox ID="txtInput" runat="server" TextMode="MultiLine" Rows="3" Columns="50"></asp:TextBox><br /><br />

    <asp:Button ID="btnProcess" runat="server" Text="Process" OnClick="btnProcess_Click" /><br /><br />

    <asp:Label ID="lblResult" runat="server"></asp:Label>

</asp:Content>
