<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Messages.aspx.cs" Inherits="ArabaSatisSitesi.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        
        <tr>
            <td style="font-size: medium; font-family: 'Times New Roman', Times, serif;"> 
                <h1><strong>Mesajlar </strong></h1>
            </td>
            <br />
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" style="margin-right: 112px"  >
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                               
                                <td class="text-left" style="height: 99px"><span style="font-size: medium">Gönderen Kişi</span>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" CssClass="form-control" Text='<%# Eval("ContactMessage") %>' Width="187px"></asp:Label>
                                    <br />
                                </td>
                                
                            </tr>
                            <tr>
                                
                                <td><span style="font-size: medium">Gönderen kişinin mail adresi:</span><asp:Label ID="Label2" runat="server" CssClass="form-control" Text='<%# Eval("ContactMail") %>' Width="291px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span style="font-size: medium">
                                    <br />
                                    <br />
                                    Mesaj:</span><br />
                                    <br />
                                    <div class="text-center">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="123px" ReadOnly="True" style="margin-left: 0px" Text='<%# Eval("ContactName") %>' TextMode="MultiLine" Width="314px"></asp:TextBox>
                                    </div>
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
