<%@ Page Title="" Language="C#" MasterPageFile="~/Site2_nav_barOnly_.Master" AutoEventWireup="true" CodeBehind="InsertAccount.aspx.cs" Inherits="ECommerce_WebApp.InsertAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
    .auto-style1 { height: 30px; }
    form table.w-100 { width: min(100% - 32px, 660px) !important; margin: 48px auto 64px; padding: 24px 30px; border-collapse: separate; border-spacing: 0 8px; background: #fff; border: 1px solid #e6e8e5; border-radius: 14px; box-shadow: 0 12px 36px rgba(28,39,32,.09); color: #3b5d50; font-family: "Segoe UI", Arial, sans-serif; }
    form table.w-100 td { padding: 7px 10px; vertical-align: middle; }
    form table.w-100 label { color: #40594d; font-size: 14px; font-weight: 600; }
    form table.w-100 input[type=text] { box-sizing: border-box; width: 100%; min-width: 210px; padding: 11px 12px; border: 1px solid #dce4dd; border-radius: 7px; background: #fbfcfb; color: #263d33; }
    form table.w-100 input[type=text]:focus { outline: 2px solid rgba(42,123,79,.18); border-color: #2a7b4f; }
    form table.w-100 span[id$="Validator1"], form table.w-100 span[id$="Validator2"], form table.w-100 span[id$="Validator3"], form table.w-100 span[id$="Validator4"] { color: #b4483f; font-size: 12px; }
    form table.w-100 input[type=submit], form table.w-100 input[type=button] { padding: 11px 18px; border: 0; border-radius: 7px; background: #29483b; color: #fff; font-weight: 600; cursor: pointer; }
    form table.w-100 input[type=submit]:hover, form table.w-100 input[type=button]:hover { background: #1f6b43; }
    @media (max-width: 600px) { form table.w-100 { width: calc(100% - 24px) !important; margin: 24px auto; padding: 14px 8px; } form table.w-100 td { display: block; padding: 5px 8px; } form table.w-100 input[type=text] { min-width: 0; } }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Acc Name:"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="accname_tb" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="accname_tb" ErrorMessage="Enter account name"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Acc Type:"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="acc_type_tb" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="acc_type_tb" ErrorMessage="Enter account type"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Acc Number:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="acc_num_tb" runat="server" AutoPostBack="True" OnTextChanged="acc_num_tb_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="acc_num_tb" ErrorMessage="Enter account number"></asp:RequiredFieldValidator>
            <asp:Label ID="valid_ac_num" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Balance Amount:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="acc_bal_tb" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="acc_bal_tb" ErrorMessage="Enter balance amount"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Account" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/PayBill.aspx" Text="pay" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
