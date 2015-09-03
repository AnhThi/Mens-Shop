<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="khuyen-mai.aspx.cs" Inherits="khuyen_mai" %>

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
                    <asp:HyperLink NavigateUrl="khuyen-mai.aspx" runat="server" >
                        <p>Khuyễn mãi</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="khuyen-mai">
        <asp:DataList runat="server" ID="dtl_hangmoi" Width="100%" RepeatColumns="5" CellPadding="10" CellSpacing="20">
            <ItemTemplate>
                <a href="chi-tiet.aspx?pro=<%# Eval("mamh") %>">
                    <img src="<%# Eval("hinhdd","images/mat-hang/{0}") %>"/>
                    <div style="width: 200px; height: 35px;margin:auto;background-color:#2f2e2e;opacity:0.4;transform:translateY(-50px);"></div>
                    <p style="text-align: center;color:#ffffff;margin-right: 10px;transform:translateY(-75px);"><%# Eval("tenmh") %></p>
                    <p style="font-size:19px;text-align: right; font-weight: bold; margin-right: 12px;transform:translateY(-65px);"><%# Eval("giaban", "{0: ###,###}") %></p>
                    <p "<%# Eval("saleoff") %>" style="color: #21ba4a;font-size:15px;text-align: right; margin-right: 10px;transform:translateY(-65px);"><%# Eval("khuyenmai", "Giảm còn {0: ###,###}") %></p>
                </a>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

