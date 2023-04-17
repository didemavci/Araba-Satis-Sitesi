<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Messages.aspx.cs" Inherits="ArabaSatisSitesi.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>Mesajlar</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td><span style="font-size: medium">Gönderen Kişi</span>:<asp:Label ID="Label1" runat="server" Text='<%# Eval("ContactMessage") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span style="font-size: medium">Gönderen kişinin mail adresi:</span><asp:Label ID="Label2" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span style="font-size: medium">Mesaj:</span><br />
                                    <asp:TextBox ID="TextBox1" runat="server" Height="154px" ReadOnly="True" Text='<%# Eval("ContactName") %>' TextMode="MultiLine" Width="219px"></asp:TextBox>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  
                                    <a href="MessageDelete.aspx?id=<%# Eval("ContactID") %>" > <div class="btn btn-danger">sil</div> </a>
                                    
                                   
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="text-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
    </table>
</asp:Content>
