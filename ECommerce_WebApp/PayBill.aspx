<%@ Page Title="" Language="C#" MasterPageFile="~/Site2_nav_barOnly_.Master" AutoEventWireup="true" CodeBehind="PayBill.aspx.cs" Inherits="ECommerce_WebApp.PayBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        form table.w-100 { width: min(100% - 32px, 640px) !important; margin: 48px auto 64px; padding: 26px 30px; border-collapse: separate; border-spacing: 0 12px; background: #fff; border: 1px solid #e6e8e5; border-radius: 14px; box-shadow: 0 12px 36px rgba(28,39,32,.09); color: #3b5d50; font-family: "Segoe UI", Arial, sans-serif; }
        form table.w-100 td { padding: 8px 10px; vertical-align: middle; }
        form table.w-100 label { color: #40594d; font-size: 15px; font-weight: 600; }
        form table.w-100 select { box-sizing: border-box; width: 100%; min-width: 220px; padding: 11px 12px; border: 1px solid #dce4dd; border-radius: 7px; background: #fbfcfb; color: #263d33; font: inherit; }
        form table.w-100 select:focus { outline: 2px solid rgba(42,123,79,.18); border-color: #2a7b4f; }
        form table.w-100 input[type=submit], form table.w-100 input[type=button] { min-width: 130px; padding: 11px 18px; border: 0; border-radius: 7px; background: #29483b; color: #fff; font-weight: 600; cursor: pointer; }
        form table.w-100 input[type=submit]:hover, form table.w-100 input[type=button]:hover { background: #1f6b43; }
        @media (max-width: 600px) { form table.w-100 { width: calc(100% - 24px) !important; margin: 24px auto; padding: 14px 8px; } form table.w-100 td { display: block; padding: 6px 8px; } form table.w-100 select { min-width: 0; } }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Select Account:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DD_SelectAcc" runat="server">
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/InsertAccount.aspx" Text="Add Account" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
