<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gio-hang.aspx.cs" Inherits="gio_hang" %>

<asp:Content ID="con_slider" ContentPlaceHolderID="ctp_slider" Runat="Server">
    
</asp:Content>
<asp:Content ID="con_path" ContentPlaceHolderID="ctp_path" Runat="Server">
    <div id="path">
            <ul>
                <li>
                    <img src="images/common/path-icon.png" alt="Men' Shop"/>
                </li>
                <li>
                    <asp:HyperLink NavigateUrl="trang-chu.aspx" runat="server" >
                        <p>Trang chủ</p>
                    </asp:HyperLink>
                </li>
                <li>
                    <p>></p>
                </li>
                <li>
                    <asp:HyperLink NavigateUrl="gio-hang.aspx" runat="server" >
                        <p>Giỏ hàng</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    
    <div id="giohangtable" runat="server">
        <p runat="server" id="lbl_giohangrong" style="text-align: center; color:#ff0000; font-size: 18px; margin-bottom: 30px; font-weight: bold;">Giỏ hàng đang trống</p>
        <asp:GridView ID="grv_giohang" runat="server" CellPadding="4" ForeColor="#333333" Width="100%" GridLines="None" AutoGenerateColumns="False" DataKeyNames="mamh,size" OnRowDeleting="grv_giohang_RowDeleting" OnRowCancelingEdit="grv_giohang_RowCancelingEdit" OnRowEditing="grv_giohang_RowEditing" OnRowUpdating="grv_giohang_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ImageField DataImageUrlField="mamh" DataImageUrlFormatString="images/mat-hang/{0}.jpg" HeaderText="Ảnh mặt hàng" ReadOnly="True">
                    <ControlStyle Height="69px" Width="50px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="tenmh" HeaderText="Tên mặt hàng" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="size" HeaderText="Size" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="sl" HeaderText="Số lượng" />
                <asp:BoundField DataField="khuyenmai" HeaderText="Giá" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="thanhtien" HeaderText="Thành tiền" ReadOnly="True" />
                <asp:CommandField AccessibleHeaderText="Chỉnh sửa giỏ" ButtonType="Button" CancelText="Hủy" EditText="Cập nhật" ShowEditButton="True" UpdateText="Chỉnh sửa">
<ControlStyle CssClass="style_button" Height="30px" Width="120px"></ControlStyle>

                <ItemStyle HorizontalAlign="Center" Height="30px" Width="50px" />
                </asp:CommandField>
                <asp:CommandField AccessibleHeaderText="Xóa mặt hàng" ButtonType="Button" DeleteText="Xóa" ShowDeleteButton="True">
<ControlStyle CssClass="style_button" Height="30px" Width="120px"></ControlStyle>

                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>

        <div style="width: 600px; height: auto; margin-left: 10px;margin-top: 30px;">
            <table border="0">
                <tr>
                    <td style="width: 160px;">
                        <p>Tên khách hàng</p>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_tenkhachhang" Width="400px" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 160px;">
                        <p>Số điện thoại</p>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_sdtgiaohang" Width="400px" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Địa chỉ giao hàng</p>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_diachigiaohang" Width="400px" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Ghi chú</p>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_ghichu" Width="410px" Height="150px" runat="server" TextMode="MultiLine" />
                    </td>
                </tr>
            </table>
        </div>

        <div style="width: 500px; height: 200px; float: right; margin-top: -280px;">    
            <p style="margin-top: 30px;">Điểm tích lũy của bạn:</p>
            <asp:TextBox ID="txt_khautru" Enabled="false" runat="server" CssClass="style_textbox" Height="22px" />
            <asp:Button ID="btn_khautru" Text="Khấu trừ" runat="server" Width="120px" Height="30px" CssClass="style_button" OnClick="btn_khautru_Click" />
            &nbsp
            <asp:Button ID="btn_troilai" Text="Trở lại" runat="server" Width="120px" Height="30px" CssClass="style_button" OnClick="btn_troilai_Click" />

            <p style="margin-bottom: 20px; font-size: 24px;font-weight:bold; color:#ff0000;">Tổng tiền:</p>

            <p id="lbl_tongtien" runat="server" style="font-size: 24px;">0</p>
            <p style="margin-left: 190px;margin-top: -30px;font-size: 24px;font-weight:bold;"> VNĐ</p>
            
            <p style="margin-top: 30px;">Phương thức thanh toán:</p>
            <asp:DropDownList ID="ddl_phuongthucthanhtoan" runat="server" CssClass="style_dropdownlist" Width="300px">
                <asp:ListItem Text="Thanh toán khi nhận hàng" Value="tienmat" />
                <asp:ListItem Text="Thanh toán quan ATM" Value="ATM" />
            </asp:DropDownList>
        </div>

        <div style="width: 300px; height: 60px; margin: auto;margin-top: 19px;">
            <asp:Button ID="btn_xoagiohang" Text="Xóa giỏ hàng" runat="server" Width="120px" Height="50px" CssClass="style_button" OnClick="btn_xoagiohang_Click" OnClientClick="return YNMessage('Có có chắc là muốn xóa giỏ hàng?')" />
            &nbsp
            &nbsp
            &nbsp
            &nbsp
            &nbsp            
            &nbsp
            <asp:Button ID="btn_thanhtoan" Text="Thanh toán" Width="120px" Height="50px" runat="server" CssClass="style_button" OnClick="btn_thanhtoan_Click" />    
        </div>
        
    </div>
    
</asp:Content>

