<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tai-khoan.aspx.cs" Inherits="tai_khoan" %>

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
                    <asp:HyperLink NavigateUrl="tai-khoan.aspx" runat="server" >
                        <p>Thông tin cá nhân</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="signup">
        <ul>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/password.png"/>
                    <input type="password" runat="server" id="txt_matkhau" placeholder="Nhập mật khẩu"/>
                </div>
                <small runat="server" id="check_matkhau">Mật khẩu phải trên 8 kí tự</small>
            </li>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/people.png"/>
                    <input type="text" runat="server" id="txt_hoten" placeholder="Nhập họ và tên"/>
                </div>
                <small runat="server" id="check_hoten">Họ tên không hợp lệ</small>
            </li>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/phone.png"/>
                    <input type="text" runat="server" id="txt_sdt" placeholder="Nhập số điện thoại"/>
                </div>
                <small runat="server" id="check_sdt">Số điện thoại không hợp lệ</small>
            </li>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/address.png"/>
                    <input type="text" runat="server" id="txt_diachi" placeholder="Nhập địa chỉ giao hàng"/>
                </div>
                <small runat="server" id="check_diachi">Địa chỉ không được trống</small>
            </li>
            <li>
                <small>* Tất cả các trường dữ liệu điều phải được nhập</small>
            </li>
            <li style="text-align: center;">
                <asp:Button runat="server" ID="btn_chinhsua_submit" Width="110px" CssClass="style_button" Text="Cập nhật" OnClick="btn_chinhsua_submit_Click"/>
                <input runat="server" type="reset" id="btn_nhaplai" style="width: 110px; margin-left: 20px;" class="style_button" value="Nhập lại"/>
            </li>
            <li>
                <span style="font-size: 20px; margin-top: 15px;">Điểm tích lũy: </span><span runat="server" id="lbl_diemtichluy"  style="font-size: 20px; margin-top: 15px;"></span><span style="font-size: 20px; margin-top: 15px;"> VNĐ</span>
            </li>
        </ul>
    </div>
    <div style="width: 1000px;margin:auto;">

            <asp:GridView ID="grv_hoadoncanhan" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanging="grv_hoadoncanhan_SelectedIndexChanging" DataKeyNames="sogh">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="sogh" HeaderText="Số giỏ hàng" />
                    <asp:BoundField DataField="ngaylap" HeaderText="Ngày lập" />
                    <asp:BoundField DataField="sdt" HeaderText="Số điện thoại" />
                    <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" />
                    <asp:BoundField DataField="ghichu" HeaderText="Ghi chú" />
                    <asp:BoundField DataField="tinhtrang" HeaderText="Tình trạng" />
                    <asp:CommandField ButtonType="Button" SelectText="Xem chi tiết" ShowSelectButton="True">
                    <ControlStyle CssClass="style_button" Width="120px" />
                    <ItemStyle HorizontalAlign="Right" />
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
        <br /><br /><br />
        </div>
</asp:Content>

