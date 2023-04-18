<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="ArabaSatisSitesi.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="nav-justified">
        <h1 class="text-center" style="color: #CC3300"><strong>BİZE ULAŞIN</strong></h1>
        <tr>
            <td style="font-size: medium; width: 269px;" class="text-center"><strong>İsim:</strong> <br />
            </td>
            <td style="width: 877px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtName" runat="server" Height="28px" style="font-size: medium" ToolTip="İsminizi girin" Width="121px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="width: 269px">
                <br />
                <span style="font-size: medium"><strong>Mail adresi:</strong> </span><br />
            </td>
            <td  style="width: 877px" class="text-center">
                <asp:TextBox ID="TxtMail" runat="server" Height="22px" ToolTip="Mail Adresinizi Girin" Width="123px" ></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="text-center" style="width: 269px">
                <br />
                <br />
                <br />
                <span style="font-size: large"><strong>Mesaj:</strong> </span></td>
            <td class="text-center" style="width: 877px">
                <asp:TextBox ID="TxtMesaj" runat="server" Height="176px" ToolTip="Mesajınızı girin" Width="412px"></asp:TextBox>
                <br />
                <br />
                <strong>
                <asp:Button ID="btnGonder" runat="server" class="btn btn-primary" Height="39px" OnClick="btnGonder_Click" style="font-size: medium" Text="Gönder" Width="185px" />
                </strong>
                <br />
            </td>
        </tr>
        
    </table>
    </div>
</asp:Content>
