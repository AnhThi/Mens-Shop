<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="phuc-hoi-tai-khoan.aspx.cs" Inherits="phuc_hoi_tai_khoan" %>

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
                    <asp:HyperLink NavigateUrl="phuc-hoi-tai-khoan.aspx" runat="server" >
                        <p>Phục hồi mật khẩu</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="phuc-hoi-tai-khoan">
        <ul>
            <li>
                <div class="style_textbox" style="background-color: #bd0761;">
                    <img src="images/common/email.png"/>
                    <input type="text" runat="server" id="txt_email" placeholder="Nhập email cần phục hồi"/>
                </div>
                <small runat="server" id="check_email">Email không hợp lệ</small>
            </li>
            <li style="text-align: center;">
                <asp:Button runat="server" ID="btn_phuchoitaikhoan" Width="110px" CssClass="style_button" Text="Cấp lại mật khẩu" OnClick="btn_phuchoitaikhoan_Click"/>
            </li>
        </ul>
    </div>
</asp:Content>

