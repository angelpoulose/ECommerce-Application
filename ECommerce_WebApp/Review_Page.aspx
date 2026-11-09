<%@ Page Title="" Language="C#" MasterPageFile="~/Site2_nav_barOnly_.Master" AutoEventWireup="true" CodeBehind="Review_Page.aspx.cs" Inherits="ECommerce_WebApp.Review_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        form h2 { width: min(100% - 32px, 720px); margin: 42px auto 0; color: #29483b; font-family: "Segoe UI", Arial, sans-serif; font-size: 28px; font-weight: 700; letter-spacing: -.03em; }
        form table.w-100 { width: min(100% - 32px, 720px) !important; margin: 18px auto 56px; padding: 24px 28px; border-collapse: separate; border-spacing: 0 10px; background: #fff; border: 1px solid #e6e8e5; border-radius: 14px; box-shadow: 0 12px 36px rgba(28,39,32,.09); color: #3b5d50; font-family: "Segoe UI", Arial, sans-serif; }
        form table.w-100 td { padding: 8px 10px; vertical-align: top; }
        form table.w-100 label { color: #40594d; font-size: 14px; font-weight: 600; }
        form table.w-100 textarea { box-sizing: border-box; width: 100%; min-height: 190px; padding: 12px; border: 1px solid #dce4dd; border-radius: 8px; background: #fbfcfb; color: #263d33; font: inherit; line-height: 1.5; resize: vertical; }
        form table.w-100 textarea:focus { outline: 2px solid rgba(42,123,79,.18); border-color: #2a7b4f; }
        form table.w-100 span[id$="RequiredFieldValidator1"] { color: #b4483f; font-size: 12px; }
        form table.w-100 input[type=submit], form table.w-100 input[type=button] { padding: 11px 20px; border: 0; border-radius: 7px; background: #29483b; color: #fff; font-weight: 600; cursor: pointer; }
        form table.w-100 input[type=submit]:hover, form table.w-100 input[type=button]:hover { background: #1f6b43; }
        @media (max-width: 600px) { form h2 { width: calc(100% - 24px); margin-top: 24px; font-size: 24px; } form table.w-100 { width: calc(100% - 24px) !important; margin: 12px auto 28px; padding: 14px 8px; } form table.w-100 td { display: block; padding: 6px 8px; } }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>review this Product</h2>
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="feedbackmsgtb" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="feedbackmsgtb" ErrorMessage="enter review"></asp:RequiredFieldValidator>
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
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
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
