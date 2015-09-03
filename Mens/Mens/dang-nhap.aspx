<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dang-nhap.aspx.cs" Inherits="dang_nhap" %>

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
                    <asp:HyperLink NavigateUrl="dang-nhap.aspx" runat="server" >
                        <p>Đăng nhập</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="login">
        <ul>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/email.png"/>
                    <input type="text" runat="server" id="txt_email" placeholder="Nhập email đăng nhập"/>
                </div>
            </li>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/password.png"/>
                    <input type="password" runat="server" id="txt_matkhau" placeholder="Nhập mật khẩu"/>
                </div>
            </li>
            <%--<li>
                <asp:CheckBox ID="chb_luutaikhoan" Text="Lưu tài khoản" runat="server" />
            </li>--%>
            <li>
                <a href="phuc-hoi-tai-khoan.aspx">
                    <p style="font-size: 17px; color: #0094ff; text-align: center; text-indent: -50px;">Quên mật khẩu?</p>
                </a>
            </li>
            <li style="text-align: center;">
                <asp:Button runat="server" ID="btn_dangnhap_submit" Width="110px" CssClass="style_button" Text="Đăng nhập" OnClick="btn_dangnhap_submit_Click"/>
            </li>
        </ul>
    </div>
</asp:Content>

