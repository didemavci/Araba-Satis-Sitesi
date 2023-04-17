<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="ArabaSatisSitesi.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="font-size: medium">İsim:<br />
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Height="28px" style="font-size: medium" ToolTip="İsminizi girin" Width="121px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <br />
                <span style="font-size: medium">Mail:</span><br />
            </td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" Height="22px" ToolTip="Mail Adresinizi Girin" Width="123px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <br />
                <br />
                <br />
                <span style="font-size: medium">Mesaj:</span></td>
            <td>
                <asp:TextBox ID="TxtMesaj" runat="server" Height="176px" ToolTip="Mesajınızı girin" Width="412px"></asp:TextBox>
                <br />
                <br />
                <strong>
                <asp:Button ID="btnGonder" runat="server" Height="39px" OnClick="btnGonder_Click" style="font-size: medium" Text="Gönder" Width="185px" />
                </strong>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
