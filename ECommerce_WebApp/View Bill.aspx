<%@ Page Title="" Language="C#" MasterPageFile="~/Site2_nav_barOnly_.Master" AutoEventWireup="true" CodeBehind="View Bill.aspx.cs" Inherits="ECommerce_WebApp.View_Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        form table.w-100 {
            width: min(100% - 32px, 1000px) !important;
            margin: 48px auto 64px;
            padding: 30px 36px;
            border-collapse: separate;
            border-spacing: 0;
            background: #fff;
            border: 1px solid #e6e8e5;
            border-radius: 12px;
            box-shadow: 0 12px 36px rgba(28, 39, 32, .09);
            color: #3b5d50;
            font-family: "Segoe UI", Arial, sans-serif;
        }

        form table.w-100 > tbody > tr > td {
            padding: 9px 12px;
            vertical-align: top;
        }

        form table.w-100 > tbody > tr:first-child td:first-child {
            color: #3b5d50;
            font-size: 24px;
            letter-spacing: .02em;
            vertical-align: middle;
        }

        form table.w-100 > tbody > tr:first-child td:first-child span {
            display: inline-flex;
            align-items: center;
            color: #29483b !important;
            font-size: 27px !important;
            font-weight: 700;
            letter-spacing: -.04em;
        }

        form table.w-100 > tbody > tr:first-child td:first-child span::before {
            content: "";
            display: inline-block;
            width: 34px;
            height: 34px;
            margin-right: 10px;
            border-radius: 9px;
            background: #2a7b4f url("favicon.png") center / cover no-repeat;
            box-shadow: 0 3px 8px rgba(31, 91, 59, .18);
        }

        form table.w-100 > tbody > tr:first-child td:last-child span {
            display: inline-block;
            padding: 8px 15px;
            border: 1px solid #e5ebe6;
            border-radius: 7px;
            background: #f5f8f5;
            color: #29483b !important;
            font-size: 22px !important;
            font-weight: 600;
            letter-spacing: .01em;
        }

        form table.w-100 > tbody > tr:first-child td:last-child {
            text-align: right;
        }

        form table.w-100 > tbody > tr:nth-child(2),
        form table.w-100 > tbody > tr:nth-child(5),
        form table.w-100 > tbody > tr:nth-child(11),
        form table.w-100 > tbody > tr:nth-child(16) {
            height: 18px;
        }

        form table.w-100 > tbody > tr:nth-child(3) td,
        form table.w-100 > tbody > tr:nth-child(4) td {
            padding-top: 3px;
            padding-bottom: 3px;
        }

        form table.w-100 > tbody > tr:nth-child(3) td:first-child,
        form table.w-100 > tbody > tr:nth-child(4) td:first-child {
            color: #78847e;
            font-size: 13px;
        }

        form table.w-100 > tbody > tr:nth-child(3) td:nth-child(2),
        form table.w-100 > tbody > tr:nth-child(4) td:nth-child(2) {
            color: #29483b;
            font-size: 13px;
            font-weight: 600;
        }

        form table.w-100 > tbody > tr:nth-child(6) td {
            color: #7b8580;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: .1em;
            text-transform: uppercase;
        }

        form table.w-100 > tbody > tr:nth-child(6) td:first-child,
        form table.w-100 > tbody > tr:nth-child(6) td:nth-child(4) {
            border-bottom: 1px solid #e5ebe6;
        }

        form table.w-100 > tbody > tr:nth-child(7) td,
        form table.w-100 > tbody > tr:nth-child(8) td,
        form table.w-100 > tbody > tr:nth-child(9) td,
        form table.w-100 > tbody > tr:nth-child(10) td {
            padding-top: 4px;
            padding-bottom: 4px;
        }

        form table.w-100 li {
            list-style: none;
        }

        form table.w-100 > tbody > tr:nth-child(12) > td:first-child {
            width: 100% !important;
            padding: 0;
        }

        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table {
            display: table !important;
            width: 100% !important;
            max-width: 100%;
            table-layout: fixed;
            border-collapse: collapse;
            border: 1px solid #e6e8e5;
            border-radius: 10px;
            overflow: hidden;
        }

        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table th:nth-child(1),
        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table td:nth-child(1) { width: 32%; }
        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table th:nth-child(2),
        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table td:nth-child(2) { width: 18%; }
        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table th:nth-child(3),
        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table td:nth-child(3) { width: 12%; }
        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table th:nth-child(4),
        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table td:nth-child(4) { width: 18%; }
        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table th:nth-child(5),
        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table td:nth-child(5) { width: 20%; }

        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table th {
            padding: 14px 12px;
            background: #29483b;
            color: #fff;
            font-size: 12px;
            font-weight: 700;
            text-align: left;
            text-transform: uppercase;
            letter-spacing: .06em;
        }

        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table td {
            padding: 12px;
            border-bottom: 1px solid #edf0ed;
            color: #53645c;
            vertical-align: middle;
        }

        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table tr:last-child td {
            border-bottom: 0;
        }

        form table.w-100 > tbody > tr:nth-child(12) > td:first-child table tr:nth-child(even) td {
            background: #f8faf8;
        }

        form table.w-100 > tbody > tr:nth-child(12) img {
            display: block;
            width: 72px !important;
            max-width: 100%;
            height: 84px !important;
            border-radius: 8px;
            object-fit: cover;
        }

        form table.w-100 > tbody > tr:nth-child(n+13):nth-child(-n+17) td:nth-last-child(2) {
            text-align: right;
            color: #78847e;
        }

        form table.w-100 > tbody > tr:nth-child(n+13):nth-child(-n+17) td:last-child {
            min-width: 120px;
            text-align: right;
            color: #3b5d50;
            font-weight: 600;
        }

        form table.w-100 > tbody > tr:nth-child(17) td {
            padding-top: 17px;
            border-top: 1px solid #dfe5e0;
            color: #263d33;
            font-size: 18px;
            font-weight: 700;
        }

        form table.w-100 > tbody > tr:nth-child(17) td:last-child {
            color: #237247;
            font-size: 22px;
        }

        @media (max-width: 700px) {
            form table.w-100 {
                width: calc(100% - 20px) !important;
                margin: 20px auto;
                padding: 14px 10px;
                font-size: 13px;
            }

            form table.w-100 > tbody > tr:first-child td:first-child span {
                font-size: 21px !important;
            }

            form table.w-100 > tbody > tr:first-child td:first-child span::before {
                width: 28px;
                height: 28px;
                margin-right: 7px;
            }

            form table.w-100 > tbody > tr > td {
                padding-right: 5px;
                padding-left: 5px;
            }

            form table.w-100 > tbody > tr:nth-child(12) > td:first-child table {
                min-width: 0;
            }

            form table.w-100 > tbody > tr:nth-child(12) > td:first-child table th,
            form table.w-100 > tbody > tr:nth-child(12) > td:first-child table td {
                padding: 8px 5px;
                font-size: 11px;
                overflow-wrap: anywhere;
            }
        }

        .auto-style1 { height: 30px; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Furni."></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Invoice"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Invoice number:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="billnoLabel" runat="server" Text="Label_billNo"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Invoice date:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label_billDate" runat="server" Text="Label_billDate"></asp:Label>
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
            <td class="auto-style1">Bill from:</td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1">Bill to:</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>Furni.</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label_userName" runat="server" Text="Label_userName"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><span>24 MG Road, 682016</span></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label_Address" runat="server" Text="Label_Address"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <li>
                    <div>
                        <div>
                            <p>
                                <span>Kochi,</span> <span>Kerala</span></p>
                        </div>
                    </div>
                </li>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label_phone" runat="server" Text="Label_phone"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Ph.no: <span>+91 9876543210</span></td>
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
            <td colspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="product_name" HeaderText="product name" />
                        <asp:ImageField DataImageUrlField="product_image" HeaderText="product image">
                            <ControlStyle Height="200px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="order_quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="product_price" HeaderText="product price" />
                        <asp:BoundField DataField="order_subtotal" HeaderText="Amount" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Subtotal:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="label_subtotal" runat="server" Text="label_subtotal"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Discount:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label12" runat="server" Text="0.00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Tax:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label14" runat="server" Text="0.00"></asp:Label>
            </td>
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
            <td>
                <asp:Label ID="Label15" runat="server" Text="Total:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Total_Label" runat="server" Text="Total_Label"></asp:Label>
            </td>
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
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay Now" />
            </td>
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
