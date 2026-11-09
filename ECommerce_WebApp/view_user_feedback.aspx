<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_user_feedback.aspx.cs" Inherits="ECommerce_WebApp.view_user_feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        * { box-sizing: border-box; }
        body { margin: 0; padding: 34px 18px; background: #f4f7f4; color: #344c40; font-family: "Segoe UI", Arial, sans-serif; }
        form { max-width: 1400px; margin: 0 auto; }
        .auto-style1 { width: 100%; }
        .auto-style1 > tbody > tr:first-child > td:first-child { padding: 24px; overflow-x: auto; background: #fff; border: 1px solid #e6e8e5; border-radius: 14px; box-shadow: 0 12px 36px rgba(28,39,32,.08); }
        .auto-style1 table { width: 100%; border-collapse: collapse; min-width: 950px; }
        .auto-style1 table th { padding: 14px 12px; background: #29483b; color: #fff; text-align: left; font-size: 12px; text-transform: uppercase; letter-spacing: .06em; }
        .auto-style1 table td { padding: 12px; border-bottom: 1px solid #edf0ed; vertical-align: middle; }
        .auto-style1 table tr:nth-child(even) td { background: #f8faf8; }
        .auto-style1 table img { width: 76px !important; height: 84px !important; object-fit: cover; border-radius: 8px; }
        input[type=submit] { padding: 9px 14px; border: 0; border-radius: 7px; background: #29483b; color: #fff; font-weight: 600; cursor: pointer; }
        input[type=submit]:hover { background: #1f6b43; }
        @media (max-width: 600px) { body { padding: 16px 10px; } .auto-style1 > tbody > tr:first-child > td:first-child { padding: 10px; } }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_email">
                        <Columns>
                            <asp:ImageField DataImageUrlField="User_Photo" HeaderText="user photo">
                                <ControlStyle Height="200px" Width="150px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="User_Name" HeaderText="user name" />
                            <asp:BoundField DataField="user_email" HeaderText="user email" />
                            <asp:BoundField DataField="product_name" HeaderText="product name" />
                            <asp:ImageField DataImageUrlField="product_image" HeaderText="product image">
                                <ControlStyle Height="200px" Width="150px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="feedback_message" HeaderText="feedback" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("feedback_id") %>' OnCommand="Button1_Command1" Text="reply mail" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        
                    </asp:GridView>
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
            </tr>
            <tr>
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
            </tr>
            <tr>
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
            </tr>
            <tr>
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
            </tr>
            <tr>
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
            </tr>
            <tr>
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
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
