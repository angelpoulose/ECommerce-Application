<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="change_order_status.aspx.cs" Inherits="ECommerce_WebApp.change_order_status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        * { box-sizing: border-box; }
        body { margin: 0; padding: 34px 18px; background: #f4f7f4; color: #344c40; font-family: "Segoe UI", Arial, sans-serif; }
        form { max-width: 1280px; margin: 0 auto; }
        .auto-style1 { width: 100%; }
        form > div > table { width: 100%; border-collapse: separate; border-spacing: 0; }
        form > div > table > tbody > tr:first-child > td:first-child { padding: 24px; overflow-x: auto; background: #fff; border: 1px solid #e6e8e5; border-radius: 14px; box-shadow: 0 12px 36px rgba(28,39,32,.08); }
        form > div > table > tbody > tr:first-child > td:first-child table { width: 100%; min-width: 850px; border-collapse: collapse; }
        form > div > table > tbody > tr:first-child > td:first-child table th { padding: 14px 12px; background: #29483b; color: #fff; text-align: left; font-size: 12px; text-transform: uppercase; letter-spacing: .06em; }
        form > div > table > tbody > tr:first-child > td:first-child table td { padding: 12px; border-bottom: 1px solid #edf0ed; vertical-align: middle; }
        form > div > table > tbody > tr:first-child > td:first-child table tr:nth-child(even) td { background: #f8faf8; }
        img { width: 76px !important; height: 84px !important; object-fit: cover; border-radius: 8px; }
        input[type=submit] { padding: 9px 14px; border: 0; border-radius: 7px; background: #29483b; color: #fff; font-weight: 600; cursor: pointer; }
        input[type=submit]:hover { background: #1f6b43; }
        @media (max-width: 600px) { body { padding: 16px 10px; } form > div > table > tbody > tr:first-child > td:first-child { padding: 10px; } }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="bill_id" HeaderText="bill id" />
                                <asp:BoundField DataField="product_name" HeaderText="product name" />
                                <asp:ImageField DataImageUrlField="product_image" HeaderText="product image">
                                    <ControlStyle Height="200px" Width="150px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="user_name" HeaderText="user name" />
                                <asp:BoundField DataField="order_quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="order_subtotal" HeaderText="subtotal" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("order_id") %>' OnCommand="Button1_Command" Text="change to deliver" />
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
            </table>
        </div>
    </form>
</body>
</html>
