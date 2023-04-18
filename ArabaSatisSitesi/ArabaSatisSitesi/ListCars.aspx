<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListCars.aspx.cs" Inherits="ArabaSatisSitesi.ListCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif">
                        <asp:Label ID="Label2" runat="server"  Text='<%# Eval("MarkaIsim") %>' style="font-size: medium"></asp:Label>
                          &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server"  Text='<%# Eval("ArabaModel") %>' style="font-size: small"></asp:Label>
                       
                        
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Image ID="Image1" runat="server"  Height="271px" ImageUrl='<%# Eval("ArabaFoto") %>' Width="643px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server"  Text='<%# Eval("AracYakitTipi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="169px" ReadOnly="True" Text='<%# Eval("ArabaAciklama") %>' TextMode="MultiLine" Width="840px" BorderStyle="Solid" BorderWidth="3px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server"  Text='<%# Eval("ArabaSatici") %>' style="font-size: small"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server"  Text='<%# Eval("ArabaIletisim") %>' style="font-size: small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server"  Text='<%# Eval("ArabaUcret") %>' style="font-size: small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    </div>

</asp:Content>
