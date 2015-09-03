<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bai-viet.aspx.cs" Inherits="bai_viet" %>

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
            </ul>
        </div><%-------End #path-----%>  
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <p runat="server" id="baiviettrong" style="text-align: center; font-size: 20px; font-weight: bold; margin-bottom: 20px;"></p>
    <asp:DataList ID="dtl_baivietmoi" runat="server" RepeatColumns="1" CellPadding="10" CellSpacing="22" Width="100%">
        <ItemTemplate>
            <div id="bai-viet-moi">
                <table border="0">
                    <tr>
                        <td rowspan="2">
                            <img src="<%# Eval("anhbaiviet", "images/common/{0}") %>" width="155" height="110"/>
                        </td>
                        <td>
                            <a href="<%# "chi-tiet-bai-viet.aspx?article=" + Eval("mabv") %>">
                                <p style="font-weight:600;"><%# Eval("tieude") %></p>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><%# Eval("ngayviet") %></small>
                        </td>
                    </tr>
                </table>  
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

