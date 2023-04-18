<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="ArabaSatisSitesi.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 357px" CssClass="form-control" class="text-center"><strong>Araba markası seçiniz:</strong> </td>
            <td>
                <asp:DropDownList ID="DropDownMarka" runat="server" Height="21px" Width="315px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 357px; height: 22px;" CssClass="form-control" class="text-center"><strong>Araba modelini yazınız:</strong> </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtmodel" runat="server" Width="312px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px" CssClass="form-control" class="text-center"><strong>Araba fotoğraf linki:</strong> </td>
            <td>
                <asp:TextBox ID="txtfoto" runat="server" Width="313px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px" CssClass="form-control" class="text-center"><strong>Araba yakıt tipini yazınız:</strong> </td>
            <td>
                <asp:TextBox ID="txtyakit" runat="server" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px" class="text-center"><strong>Açıklama giriniz:</strong> </td>
            <td>
                <asp:TextBox ID="txtaciklama" runat="server" Height="146px" TextMode="MultiLine" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px" class="text-center"><strong>Araç satıcısı:</strong> </td>
            <td>
                <asp:TextBox ID="txtsatici" runat="server" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px" class="text-center"><strong>Telefon Numarası:</strong></td>
            <td>
                <asp:TextBox ID="txttelefon" runat="server" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px" class="text-center"><strong>Fiyat:</strong></td>
            <td class="text-left">
                <asp:TextBox ID="txtfiyat" runat="server" Height="16px" Width="313px"></asp:TextBox>
                <br />
                <strong>
                <asp:Button ID="btnekle" runat="server" class="btn btn-primary" Height="37px" OnClick="btnekle_Click" style="font-size: medium" Text="EKLE" Width="110px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
