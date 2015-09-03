<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chinh-sach-doi-tra.aspx.cs" Inherits="cinh_sach_doi_tra" %>

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
                    <asp:HyperLink NavigateUrl="chinh-sach-doi-tra.aspx" runat="server" >
                        <p>Chính sách đổi trả hàng</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="doi-tra">
        <img src="images/common/chinh-sach-doi-tra.png" width="1100" height="681">
    </div>
</asp:Content>

