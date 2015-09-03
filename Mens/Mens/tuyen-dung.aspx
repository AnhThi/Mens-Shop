<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tuyen-dung.aspx.cs" Inherits="tuyen_dung" %>

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
                    <asp:HyperLink NavigateUrl="tuyen-dung.aspx" runat="server" >
                        <p>Thông tin tuyển dụng</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="tuyen-dung">
        <img src="images/common/thong-tin-tuyen-dung.png" width="1100" height="1965"/>
    </div>
</asp:Content>

