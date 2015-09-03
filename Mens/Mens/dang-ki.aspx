<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dang-ki.aspx.cs" Inherits="dang_ki" %>

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
                    <asp:HyperLink NavigateUrl="dang-ki.aspx" runat="server" >
                        <p>Đăng kí</p>
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
                    <img src="images/common/people.png"/>
                    <input type="text" runat="server" id="txt_hoten" placeholder="Nhập họ và tên"/>
                </div>
                <small runat="server" id="check_hoten">Họ tên không hợp lệ</small>
            </li>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/email.png"/>
                    <input type="text" runat="server" id="txt_email" placeholder="Nhập email đăng nhập"/>
                </div>
                <small runat="server" id="check_email">Email không hợp lệ</small>
            </li>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/password.png"/>
                    <input type="password" runat="server" id="txt_matkhau" placeholder="Nhập mật khẩu"/>
                </div>
                <small runat="server" id="check_matkhau">Mật khẩu phải trên 8 kí tự</small>
            </li>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/password.png"/>
                    <input type="password" runat="server" id="txt_nhaplaimatkhau" placeholder="Nhập lại mật khẩu"/>
                </div>
                <small runat="server" id="check_nhaplaimatkhau">Mật khẩu không trùng khớp</small>
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
            <li>
                <a href="loi-ich-thanh-vien.aspx">
                    <img style="margin-left: 15px;" src="images/common/read-book.png" alt="Lợi ích thành viên"/>
                    <span style="margin-left: 5px;">Quy định và lợi ích của thành viên</span>
                </a>
            </li>
            <li style="text-align: center;">
                <asp:Button runat="server" ID="btn_dangki_submit" Width="110px" CssClass="style_button" Text="Đăng kí" OnClick="btn_dangki_submit_Click"/>
                <input runat="server" type="reset" id="btn_nhaplai" style="width: 110px; margin-left: 20px;" class="style_button" value="Nhập lại"/>
            </li> 
        </ul>
    </div>
</asp:Content>

