﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ArabaSatisSitesi.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="font-size: medium; width: 140px">Mail Adresiniz:</td>
            <td>
                <br />
                <asp:TextBox ID="txtmail" runat="server" CssClass="col-xs-offset-0" Height="21px" TextMode="Email" Width="177px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; width: 140px">Şifreniz: </td>
            <td>
                <br />
                <asp:TextBox ID="txtsifre" runat="server" Height="18px" TextMode="Password" Width="177px"></asp:TextBox>
                <br />
                <br />
                <strong>
                <asp:Button ID="btnkayit" runat="server" Height="35px" OnClick="btnkayit_Click" style="font-size: medium" Text="Kayıt Ol" Width="157px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
