<%-- file: PdfGenerator.aspx --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chi-tiet-gio-hang.aspx.cs" Inherits="chi_tiet_gio_hang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Chi tiết giỏ hàng</title>
        <link href="style/component.css" rel="stylesheet" />
        <link href="style/private-style.css" rel="stylesheet" />
    </head>
    <body>
        <form id="form1" runat="server">
            <div style="margin: auto; width: 720px; height: auto;margin-top: 30px;">
                <div style="width: 680px;height: 214px;margin:auto;margin-bottom: 80px;">
                    <img src="images/common/mens-hoadon.png" width="680" height="214"/>
                </div>
                <div style="width:120px;margin-left:20px;">
                    <asp:Button ID="btn_exportexcel" Text="" runat="server" Width="40" Height="53" OnClick="btn_exportexcel_Click" />
                    <asp:Button ID="btn_exportpdf" Text="" runat="server" Width="40" Height="53" OnClick="btn_exportpdf_Click" />
                </div>
                <table style="border-spacing: 10px;margin-bottom: 20px;">
                    <tr>
                        <td>Số hóa đơn</td>
                        <td>
                            <asp:Label ID="txt_sohoadon" runat="server" CssClass="style_textbox" Width="230px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Ngày lập hóa đơn</td>
                        <td>
                            <asp:Label ID="txt_ngaylap" runat="server" CssClass="style_textbox" Width="230px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Nhân viên giao hàng</td>
                        <td>
                            <asp:DropDownList runat="server" CssClass="style_dropdownlist">
                                <asp:ListItem Text="Phạm Thành Công" />
                                <asp:ListItem Text="Hoàng Trọng Cầu" />
                                <asp:ListItem Text="Nguyễn Văn Ngân" />
                                <asp:ListItem Text="Nguyễn Huỳnh Minh" />
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Ngày khách hàng đặt</td>
                        <td>
                            <asp:Label ID="txt_ngaykhdat" runat="server" CssClass="style_textbox" Width="230px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:Label ID="txt_email" runat="server" CssClass="style_textbox"  idth="230px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Họ tên khách hàng</td>
                        <td>
                            <asp:Label ID="txt_hoten" runat="server" CssClass="style_textbox" Width="230px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Số điện thoại</td>
                        <td>
                            <asp:Label ID="txt_sdt" runat="server" CssClass="style_textbox" Width="230px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td>
                            <asp:Label ID="txt_diachi" runat="server" CssClass="style_textbox" Width="230px" />
                        </td>
                    </tr>
<%--                    <tr>
                        <td>Xác nhận</td>
                        <td>
                            <asp:CheckBox Enabled="false" ID="chb_xacnhan" Text="" runat="server" />
                        </td>
                    </tr>--%>
                    <tr>
                        <td>Ghi chú</td>
                        <td>
                            <asp:Label ID="txt_ghichu" runat="server" TextMode="MultiLine" Width="230px" Height="60px" CssClass="style_textbox" />
                        </td>
                    </tr>
                </table>
                <p runat="server" id="lbl_tonghoadon" style="font-size: 22px; text-align:right; margin-right: 30px; margin-top: -40px;margin-bottom: 20px;color: #ff0000;"></p>

                <asp:GridView ID="grv_chitietgiohang" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" Width="700px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:BoundField DataField="sogh" HeaderText="Số giỏ hàng" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mamh" HeaderText="Mã mặt hàng" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tenmh" HeaderText="Tên mặt hàng" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="size" HeaderText="Size" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sl" HeaderText="Số lượng" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="dgban" HeaderText="Đơn giá" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <p style="font-size:22px;text-align:left;margin-left:20px;margin-bottom:70px;margin-top:20px;">Chữ kí khách hàng</p>
                <p style="font-size:22px;text-align:right;margin-right:20px;margin-bottom:120px;margin-top:20px;margin-top:-100px;">Chữ kí chủ cửa hàng</p>
            </div>
        </form>
    </body>
</html>
