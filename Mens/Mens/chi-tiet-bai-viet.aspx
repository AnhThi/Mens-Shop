<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chi-tiet-bai-viet.aspx.cs" Inherits="chi_tiet_bai_viet" %>

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
                    <asp:HyperLink NavigateUrl="bai-viet.aspx" runat="server" >
                        <p>Bài viết</p>
                    </asp:HyperLink>
                </li>
                <li>
                    <p>></p>
                </li>
                <li>
                    <asp:HyperLink NavigateUrl="chi-tiet-bai-viet.aspx" runat="server" >
                        <p>Chi tiết</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>  
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="chi-tiet-bai-viet">
        <asp:DataList ID="dtl_chitietbaiviet" runat="server" RepeatColumns="1" CellPadding="0" CellSpacing="0" Width="100%">
            <ItemTemplate>
                <p style="font-size: 30px; text-align: center; margin-top: 28px; margin-bottom: 28px;"><%# Eval("tieude") %></p>
                <p style="color: #837b7b; font-size: 17px; text-align: right; margin-bottom: 28px;"><%# Eval("ngayviet") %></p>
                <p><%# Eval("noidung") %></p>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

