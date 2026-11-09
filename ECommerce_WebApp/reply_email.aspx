<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reply_email.aspx.cs" Inherits="ECommerce_WebApp.reply_email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        * { box-sizing: border-box; }
        body { margin: 0; padding: 34px 18px; background: #f4f7f4; color: #344c40; font-family: "Segoe UI", Arial, sans-serif; }
        form { max-width: 880px; margin: 0 auto; padding: 28px; background: #fff; border: 1px solid #e6e8e5; border-radius: 14px; box-shadow: 0 12px 36px rgba(28,39,32,.08); }
        .auto-style1 { width: 100%; border-collapse: collapse; }
        .auto-style2 { width: auto; }
        .auto-style1 td { padding: 10px; vertical-align: top; }
        label { display: block; padding-top: 9px; color: #40594d; font-size: 14px; font-weight: 600; }
        input[type=text], textarea { display: block; width: 100% !important; padding: 11px 12px; border: 1px solid #dce4dd; border-radius: 7px; background: #fbfcfb; color: #263d33; font: inherit; }
        input[type=text]:focus, textarea:focus { outline: 2px solid rgba(42,123,79,.18); border-color: #2a7b4f; }
        textarea { min-height: 240px; resize: vertical; }
        input[type=submit] { padding: 10px 20px; border: 0; border-radius: 7px; background: #29483b; color: #fff; font-weight: 600; cursor: pointer; }
        input[type=submit]:hover { background: #1f6b43; }
        @media (max-width: 600px) { body { padding: 16px 10px; } form { padding: 14px 8px; } .auto-style1 tr td:first-child { width: 1%; white-space: nowrap; } }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="subjectlb" runat="server" Text="Subject:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="subtb" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="mailBodylb" runat="server" Text="body:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="bodytb" runat="server" Height="389px" TextMode="MultiLine" Width="812px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="sent_email" runat="server" OnClick="sent_email_Click" Text="sent" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
