<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="ArabaSatisSitesi.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 357px">Araba markası seçiniz:</td>
            <td>
                <asp:DropDownList ID="DropDownMarka" runat="server" Height="21px" Width="315px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Araba modelini yazınız:</td>
            <td>
                <asp:TextBox ID="txtmodel" runat="server" Width="312px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Araba fotoğraf linki:</td>
            <td>
                <asp:TextBox ID="txtfoto" runat="server" Width="313px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Araba yakıt tipini yazınız:</td>
            <td>
                <asp:TextBox ID="txtyakit" runat="server" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Açıklama giriniz:</td>
            <td>
                <asp:TextBox ID="txtaciklama" runat="server" Height="146px" TextMode="MultiLine" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Araç satıcısı:</td>
            <td>
                <asp:TextBox ID="txtsatici" runat="server" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Telefon Numarası:</td>
            <td>
                <asp:TextBox ID="txttelefon" runat="server" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Fiyat:</td>
            <td class="text-left">
                <asp:TextBox ID="txtfiyat" runat="server" Height="16px" Width="313px"></asp:TextBox>
                <br />
                <strong>
                <asp:Button ID="btnekle" runat="server" Height="37px" OnClick="btnekle_Click" style="font-size: medium" Text="EKLE" Width="110px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
