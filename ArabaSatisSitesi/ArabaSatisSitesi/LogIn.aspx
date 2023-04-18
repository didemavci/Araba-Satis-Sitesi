<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ArabaSatisSitesi.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form style="height: 263px" >
    <table class="nav-justified">
        <tr>
           <td style="font-size:medium"  ; width: 140px">Mail Adresiniz: </td>
            
            <td>
                <br />
                <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" Height="21px" TextMode="Email" Width="177px"></asp:TextBox>
                <br/>
                <br />
                
            </td>
        </tr>
        
        <tr>
            <td style="font-size: medium; width: 140px; height: 25px;">Şifreniz: </td>
            <td style="height: 25px">
                
                
                <br />
                
                
                <asp:TextBox ID="txtsifre" runat="server" CssClass="form-control" Height="18px" TextMode="Password" Width="177px"></asp:TextBox>
                <br />
                <strong>
                <asp:Button ID="btngiris" runat="server" class="btn btn-primary"  Height="35px" OnClick="btngiris_Click" style="font-size: medium" Text="Giriş Yap" Width="157px" />
                </strong>

            </td>
        </tr>
    </table>
        </form>
</asp:Content>
