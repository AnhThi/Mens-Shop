<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="van-chuyen.aspx.cs" Inherits="van_chuyen" %>

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
                    <asp:HyperLink NavigateUrl="van-chuyen.aspx" runat="server" >
                        <p>Vận chuyển</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="van-chuyen">
        <img src="images/common/van-chuyen.png" width="1100" height="1051">
    </div>
</asp:Content>

