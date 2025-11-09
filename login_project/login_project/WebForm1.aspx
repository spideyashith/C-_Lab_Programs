<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="login_project.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
    <h2>Content Page</h2>
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>
   

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="lblTime" runat="server" Text="Current Time: "></asp:Label>
            <br/>

            <asp:Button ID="btnRefresh" runat="server" Text="Refresh Time" OnClick="btnrefresh_click" />
            <br />


            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel">
                <ProgressTemplate>
                    <div style="border:1px solid black; padding:5px; background-color:#00ffff;">
                        Updating...
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>

            <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick"></asp:Timer>


        </ContentTemplate>
        </asp:UpdatePanel>


<br />

    <asp:Label ID="Timer1" runat="server" Text="This is outside the updatePanel"></asp:Label>




</asp:Content>
