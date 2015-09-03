<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chi-tiet.aspx.cs" Inherits="chi_tiet" %>

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
                    <asp:HyperLink NavigateUrl="chi-tiet.aspx" runat="server" >
                        <p>Chi tiết mặt hàng</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="div_chi-tiet-mat-hang">
        <div id="chi-tiet-anh">
            <asp:DataList ID="dtl_chitiet_anh" runat="server">
                <ItemTemplate>
                    <img src="<%# Eval("hinhdd","images/mat-hang/{0}") %>"/>
                </ItemTemplate>
            </asp:DataList>         
        </div>

        <div id="mua-ngay">
            <asp:DataList runat="server" ID="dtl_chitiet_tenmh">
                <ItemTemplate>
                    <p style="font-size: 25px;margin-left: 28px; margin-top: 10px;font-weight:bold;"><%# Eval("tenmh") %></p>
                    <p style="text-align: left; font-weight: bold;color: #ff0000;margin-left: 28px;margin-top: 11px;font-size: 25px;"><%# Eval("khuyenmai", "{0: ###,### VNĐ}") %></p>
                </ItemTemplate>
            </asp:DataList>  
            <table border="0" style="margin-left: 45px;margin-top: 42px; margin-bottom: 50px; border-spacing: 12px;">
                <tr>
                    <td><p>Size</p></td>
                    <td>
                        <asp:DropDownList ID="ddl_muangay_size" AutoPostBack="false" runat="server" CssClass="style_dropdownlist" Width="70px"/>
                    </td>
                </tr>
            </table> 
            <asp:Button ID="btn_chovaogiohang" Text="Cho vào giỏ hàng" Width="200px" Height="40px" CssClass="style_button" runat="server" OnClick="btn_chovaogiohang_Click" />
            <p style="color:#13a461;margin-top: 20px;margin-left: 20px;"># - Đổi trả hàng trong vòng 30 ngày</p>
            <p style="color:#13a461;margin-left: 20px;"># - Thanh toán khi nhận hàng</p>   
            <p style="color:#13a461;margin-left: 20px;"># - Miễn phí giao hàng trên các quận Quận 1, Quận 3, Quận 7, Quận Tân Bình và Quận Gò Vấp</p>         
        </div>
        
        <div id="mat-hang-ngau-nhien">
            <p style="text-align: center; background-color: #191818; color: #ff0000; font-size: 22px; height: 30px;">Khác loại</p>
            <asp:DataList ID="dtl_khacloai" runat="server" Width="100%" RepeatColumns="2">
                <ItemTemplate>
                    <a href="chi-tiet.aspx?pro=<%# Eval("mamh") %>">
                        <img src="<%# Eval("hinhdd","images/mat-hang/{0}") %>"/>
                        <p style="text-align: right;margin-right: 2px;"><%# Eval("tenmh") %></p>
                        <p style="text-align: right; font-weight: bold; margin-right: 2px; margin-bottom: 5px;"><%# Eval("giaban", "{0: ###,### VNĐ}") %></p>
                    </a>
                </ItemTemplate>
            </asp:DataList>
        </div>

        <div id="cung-danh-muc">
            <p style="text-align: center; background-color: #191818; color: #ff0000; font-size: 22px; height: 30px;">Cùng loại</p>
            <asp:DataList ID="dtl_cungloai" runat="server" Width="100%" RepeatColumns="2">
                <ItemTemplate>
                    <a href="chi-tiet.aspx?pro=<%# Eval("mamh") %>">
                        <img src="<%# Eval("hinhdd","images/mat-hang/{0}") %>"/>
                        <p style="text-align: right;margin-right: 2px;"><%# Eval("tenmh") %></p>
                        <p style="text-align: right; font-weight: bold; margin-right: 2px; margin-bottom: 5px;"><%# Eval("giaban", "{0: ###,### VNĐ}") %></p>
                    </a>
                </ItemTemplate>
            </asp:DataList>
        </div>

        <div id="bai-viet-mat-hang">
            <asp:DataList ID="dtl_chitiet_baiviet" runat="server">
                <ItemTemplate>
                    <%# Eval("mota") %>
                </ItemTemplate>
            </asp:DataList>
        </div>        
    </div>
</asp:Content>

