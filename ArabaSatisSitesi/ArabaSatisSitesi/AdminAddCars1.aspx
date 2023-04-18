<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars1.aspx.cs" Inherits="ArabaSatisSitesi.AdminAddCars1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
             <table class="nav-justified">
        <tr>
            <td style="width: 357px">Araba modeli</td>
            <td>
                <asp:TextBox ID="txtmodel" runat="server" Width="312px" ReadOnly="True" Text='<%# Eval("ArabaModel") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px; height: 22px;">Araba fotoğrafı</td>
            <td style="height: 22px">
                <asp:TextBox ID="txtfoto" runat="server" Width="313px" ReadOnly="True" Text='<%# Eval("ArabaFoto") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Araba yakıt tipi</td>
            <td>
                <asp:TextBox ID="txtyakit" runat="server" Width="314px" ReadOnly="True" Text='<%# Eval("AracYakitTipi") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Açıklama </td>
            <td>
                <asp:TextBox ID="txtaciklama" runat="server" Height="146px" TextMode="MultiLine" Width="314px" ReadOnly="True" Text='<%# Eval("ArabaAciklama") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Araç satıcısı</td>
            <td>
                <asp:TextBox ID="txtsatici" runat="server" Width="314px" ReadOnly="True" Text='<%# Eval("ArabaSatici") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Telefon Numarası</td>
            <td>
                <asp:TextBox ID="txttelefon" runat="server" Width="314px" ReadOnly="True" Text='<%# Eval("ArabaIletisim") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 357px">Fiyat</td>
            <td class="text-left">
                <asp:TextBox ID="txtfiyat" runat="server" Height="16px" Width="313px" ReadOnly="True" Text='<%# Eval("ArabaUcret") %>'></asp:TextBox>
                <br />
                <br />
                <br />
                <strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="ApproveCars3.aspx"?carid="<%# Eval("ArabaID") %>"> <div class="btn btn-primary"</div></a>
                <br />
                <br />
                <br />
                </strong></td>
        </tr>
    </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
