<%@ Page Language="C#" AutoEventWireup="true" CodeFile="quan-tri.aspx.cs" Inherits="quan_tri" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register TagPrefix="fjx" Namespace="com.flajaxian" Assembly="com.flajaxian.FileUploader" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <title>Trang Quản Trị</title>
        <link rel="icon" href="images/common/path-icon.png" />

        <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>
        <script src="script/alert.js"></script>

        <link href="style/administrator.css" rel="stylesheet" />
        <link href="style/component.css" rel="stylesheet" />
        <script type="text/javascript">
            $(document).ready(function () {

                $('ul.tabs li').click(function () {
                    var tab_id = $(this).attr('data-tab');

                    $('ul.tabs li').removeClass('current');
                    $('.tab-content').removeClass('current');

                    $(this).addClass('current');
                    $("#" + tab_id).addClass('current');
                })
            })
        </script>
    </head>
    <body>
        <form id="form_" runat="server">
            <div id="logo">
                <a href="trang-chu.aspx">
                    <img src="images/common/logo_black.png" width="280" height="125">
                </a>
            </div>
            <div class="container">

	                <ul class="tabs">
		                <li class="tab-link current" data-tab="tab-mathang">Mặt hàng</li>
                        <li class="tab-link" data-tab="tab-baiviet">Bài viết</li>
		                <li class="tab-link" data-tab="tab-xulidonhang">Đơn đặt hàng</li>
		                <li class="tab-link" data-tab="tab-thanhvien">Thành viên</li>
                        <li class="tab-link" data-tab="tab-thongtincuahang">Thông tin cửa hàng</li>
                        <li class="tab-link" data-tab="tab-thongke">Thống kê</li>
                        <li class="tab-link" data-tab="tab-nhacungcap">Nhà cung cấp</li>
	                </ul>
                    <%--MẶT HÀNG-------%>
	                <div id="tab-mathang" class="tab-content current">
		                 <table border="0">
                             <tr>
                                 <td>
                                     <p>Danh mục</p>
                                 </td>
                                 <td>
                                     <asp:DropDownList DataTextField="tendanhmuc" DataValueField="madm" runat="server" ID="ddl_danhmuc" CssClass="style_dropdownlist" AutoPostBack="true" EnableViewState="true" ViewStateMode="Enabled" OnSelectedIndexChanged="ddl_danhmuc_SelectedIndexChanged"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td style="width: 140px;">
                                     <p>Mã mặt hàng</p>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="txt_mamh" runat="server" Width="400px" Height="22px" Enabled="false" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <p>Tên mặt hàng</p>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="txt_tenmh" runat="server" Width="400px" Height="22px" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <p>Ảnh đại diện</p>
                                 </td>
                                 <td>
                                     <asp:FileUpload runat="server" ID="ful_anhdaidien"/><br />
                                     <small style="color: #ff0000;">* Ảnh phải có kích thước 500x685 pixel với định dạng JPG</small>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <p>Size</p>
                                 </td>
                                 <td>
                                     <div runat="server" id="size_ao" style="width: 290px; height: 30px;">
                                         <asp:CheckBox ID="size_S" Text=" S" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_M" Text=" M" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_L" Text=" L" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_XL" Text=" XL" runat="server" Width="50px"/>
                                     </div>
                                     <div runat="server" id="size_quan" style="width: 290px; height: 30px;">
                                         <asp:CheckBox ID="size_30" Text=" 30" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_31" Text=" 31" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_32" Text=" 32" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_33" Text=" 33" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_34" Text=" 34" runat="server" Width="40px"/>
                                     </div>
                                     <div runat="server" id="size_giay" style="width: 290px; height: 30px;">
                                         <asp:CheckBox ID="size_40" Text=" 40" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_41" Text=" 41" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_42" Text=" 42" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_43" Text=" 43" runat="server" Width="40px"/>
                                         <asp:CheckBox ID="size_44" Text=" 44" runat="server" Width="40px"/>
                                     </div>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <p>Giá bán</p>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="txt_giaban" runat="server" Width="100px" Height="22px" />
                                     <span>000 VND</span>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <p>Khuyễn mãi</p>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="txt_giagiam" Text="0" runat="server" Width="100px" Height="22px" />
                                     <span>000 VND</span>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <p>Bài viết</p>
                                 </td>
                                 <td>
                                     <CKEditor:CKEditorControl runat="server" ID="cke_mota" Height="320"></CKEditor:CKEditorControl>
                                 </td>
                             </tr>
                             <tr>
                                <td colspan="2">
                                    <asp:Button ID="btn_themmathang" Text="Thêm mặt hàng" runat="server" Width="120px" Height="40px" CssClass="style_button" OnClick="btn_themmathang_Click" />
                                    <input type="reset" value="Nhập lại" class="style_button" style="width: 100px; height: 40px; margin-left: 20px;"/>
                                </td>
                            </tr>
		                 </table>
                        
	                     <asp:GridView ID="grv_mathang" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="mamh"  OnRowCancelingEdit="grv_mathang_RowCancelingEdit" OnRowEditing="grv_mathang_RowEditing" OnRowUpdating="grv_mathang_RowUpdating">
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:ImageField HeaderText="Ảnh đại diện" DataImageUrlField="hinhdd" DataImageUrlFormatString="/images/mat-hang/{0}" ReadOnly="True">
                                     <ControlStyle Height="96px" Width="70px" />
                                     <ItemStyle HorizontalAlign="Center" />
                                 </asp:ImageField>
                                 <asp:BoundField DataField="mamh" HeaderText="Mã mặt hàng" ReadOnly="True" >
                                 <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tenmh" HeaderText="Tên mặt hàng" >
                                 <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="madm" HeaderText="Danh mục" ReadOnly="True">
                                 <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="giaban" HeaderText="Giá bán" >
                                 <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="giagiam" HeaderText="Giá giảm" >
                                 <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                 <asp:CommandField ButtonType="Button" CancelText="Hủy" EditText="Chỉnh sửa" ShowEditButton="True" UpdateText="Cập nhật" />
                             </Columns>
                             <EditRowStyle BackColor="#7C6F57" />
                             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#E3EAEB" />
                             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#F8FAFA" />
                             <SortedAscendingHeaderStyle BackColor="#246B61" />
                             <SortedDescendingCellStyle BackColor="#D4DFE1" />
                             <SortedDescendingHeaderStyle BackColor="#15524A" />
                         </asp:GridView>
	                </div>
                    <%--BÀI VIẾT-------%>
	                <div id="tab-baiviet" class="tab-content">
		                <p>Tiêu đề bài viết</p>
                        <asp:TextBox ID="txt_tieude" Width="500px" CssClass="style_textbox" runat="server" />
                        <CKEditor:CKEditorControl runat="server" ID="cke_editor" Height="300"></CKEditor:CKEditorControl>
                        <span>Ảnh bài viết:</span>
                        <asp:FileUpload runat="server" ID="ful_anhbaiviet"></asp:FileUpload>
                        <asp:Button ID="btn_dangbaiviet" Text="Đăng bài viết" CssClass="style_button" runat="server" OnClick="btn_dangbaiviet_Click" />
                        <asp:GridView ID="grb_baiviet" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="mabv" OnRowDeleting="grb_baiviet_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:ImageField DataImageUrlField="anhbaiviet" HeaderText="Ảnh" DataImageUrlFormatString="/images/common/{0}">
                                    <ControlStyle Height="70px" Width="70px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:ImageField>
                                <asp:BoundField DataField="mabv" HeaderText="Mã bài viết" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="tieude" HeaderText="Tiêu đề" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ngayviet" HeaderText="Ngày đăng" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:CommandField AccessibleHeaderText="Xóa bài viết" ButtonType="Button" DeleteText="Xóa" ShowDeleteButton="True"></asp:CommandField>
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
	                </div>
                    <%--ĐƠN ĐẶT HÀNG-------%>
	                <div id="tab-xulidonhang" class="tab-content">
                        <asp:Label ID="Label2" runat="server" Text="Số giỏ hàng:"></asp:Label>
                        <asp:TextBox ID="txt_sogh" runat="server"></asp:TextBox>
                        <asp:Button ID="btn_tim_giohang_Bysogh" runat="server" Text="Tìm" OnClick="btn_tim_giohang_Bysogh_Click" />
		                 <asp:Label ID="Label1" runat="server" Text="Lọc:"></asp:Label>
                        <asp:DropDownList ID="ddl_tinhtrang" runat="server" OnSelectedIndexChanged="ddl_tinhtrang_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Text="Tất cả" Value=""></asp:ListItem>
                            <asp:ListItem Text="Chưa xác nhận" Value="False"></asp:ListItem>
                            <asp:ListItem Text="Đã xác nhận" Value="True"></asp:ListItem>
                        </asp:DropDownList>
		                 
		                <asp:GridView ID="grv_dondathang" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="sogh" OnRowDeleting="grv_dondathang_RowDeleting" OnRowEditing="grv_dondathang_RowEditing" OnRowUpdating="grv_dondathang_RowUpdating" OnRowCancelingEdit="grv_dondathang_RowCancelingEdit" OnSelectedIndexChanged="grv_dondathang_SelectedIndexChanged" OnSelectedIndexChanging="grv_dondathang_SelectedIndexChanging">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="sogh" HeaderText="Số hóa đơn" ReadOnly="True" />
                                <asp:BoundField DataField="ngaylap" HeaderText="Ngày lập" DataFormatString="{0:dd/MM/yyyy}" ReadOnly="True" />
                                <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="tenkh" HeaderText="Họ tên" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="sdt" HeaderText="Số điện thoại" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ghichu" HeaderText="Ghi chú" ReadOnly="True" />
                                <asp:TemplateField HeaderText="Xác nhận">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="chk_tinhtrang" runat="server" Checked='<%# Eval("tinhtrang") %>' />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("tinhtrang") %>' Enabled="false"/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ButtonType="Button" ShowEditButton="True" CancelText="Hủy" EditText="Cập nhật" UpdateText="Sửa" />
                                <asp:CommandField ButtonType="Button" DeleteText="Xóa" ShowDeleteButton="True" />
                                <asp:CommandField ButtonType="Button" SelectText="Chi tiết" ShowSelectButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
             
	                </div>
                    <%--Thành Viên-------%>
	                <div id="tab-thanhvien" class="tab-content">
                       <asp:GridView ID="grv_thanhvien" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"  OnRowDeleting="grv_thanhvien_RowDeleting" DataKeyNames="email">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="email" HeaderText="Email" >
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="hoten" HeaderText="Họ tên" >
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="sdt" HeaderText="Số điện thoại" >
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" >
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="kichhoat" HeaderText="Tình trạng">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:CommandField ButtonType="Button" DeleteText="Khóa" ShowDeleteButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
	                </div>
                    <%--THÔNG TIN CỬA HÀNG-------%>
                    <div id="tab-thongtincuahang" class="tab-content">
                        <table border="0">
                            <tr>
                                <td>
                                    <p>Email:</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_thongtincuahang_email" runat="server" Width="400px" Height="22px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Số điện thoại:</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_thongtincuahang_sdt" runat="server" Width="400px" Height="22px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Địa chỉ:</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_thongtincuahang_diachi" runat="server" Width="400px" Height="22px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Kinh độ:</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_thongtincuahang_kinhdo" runat="server" Width="400px" Height="22px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Vĩ độ:</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_thongtincuahang_vido" runat="server" Width="400px" Height="22px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btn_thongtincuahang_sua" Text="Chỉnh sửa" runat="server" Width="90px" Height="40px" CssClass="style_button" OnClick="btn_thongtincuahang_sua_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <p style="color: #ff0000;">Note: Mỗi slider bao gồm 16 ảnh được đánh tên từ 1-16 với kích thước 310x465 pixel và có định dạng JPG</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Silder cho Trang chủ</p>
                                </td>
                                <td>
                                    <fjx:FileUploader ID="slider_trangchu" CssUrl="~/css/FileUploader.css" runat="server" AllowedFileTypes="Web Images (Jpeg, Gig, Png):*.jpg">
                                        <Adapters>
                                            <fjx:FileSaverAdapter runat="server" FolderName="images/home-slider" />
                                        </Adapters>
                                    </fjx:FileUploader>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Silder cho Áo</p>
                                </td>
                                <td>
                                    <fjx:FileUploader ID="slider_ao" CssUrl="~/css/FileUploader.css" runat="server" AllowedFileTypes="Web Images (Jpeg, Gig, Png):*.jpg">
                                        <Adapters>
                                            <fjx:FileSaverAdapter runat="server" FolderName="images/ao-slider" />
                                        </Adapters>
                                    </fjx:FileUploader>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Silder cho Quần</p>
                                </td>
                                <td>
                                    <fjx:FileUploader ID="slider_quan" CssUrl="~/css/FileUploader.css" runat="server" AllowedFileTypes="Web Images (Jpeg, Gig, Png):*.jpg">
                                        <Adapters>
                                            <fjx:FileSaverAdapter runat="server" FolderName="images/quan-slider" />
                                        </Adapters>
                                    </fjx:FileUploader>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Silder cho Giày dép</p>
                                </td>
                                <td>
                                    <fjx:FileUploader ID="slider_giaydep" CssUrl="~/css/FileUploader.css" runat="server" AllowedFileTypes="Web Images (Jpeg, Gig, Png):*.jpg">
                                        <Adapters>
                                            <fjx:FileSaverAdapter runat="server" FolderName="images/giay-dep-slider" />
                                        </Adapters>
                                    </fjx:FileUploader>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Silder cho Balo-túi xách</p>
                                </td>
                                <td>
                                    <fjx:FileUploader ID="slider_balotuixach" CssUrl="~/css/FileUploader.css" runat="server" AllowedFileTypes="Web Images (Jpeg, Gig, Png):*.jpg">
                                        <Adapters>
                                            <fjx:FileSaverAdapter runat="server" FolderName="images/balo-tuixach-slider" />
                                        </Adapters>
                                    </fjx:FileUploader>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Silder cho Phụ kiện</p>
                                </td>
                                <td>
                                    <fjx:FileUploader ID="slider_phukien" CssUrl="~/css/FileUploader.css" runat="server" AllowedFileTypes="Web Images (Jpeg, Gig, Png):*.jpg">
                                        <Adapters>
                                            <fjx:FileSaverAdapter runat="server" FolderName="images/phu-kien-slider" />
                                        </Adapters>
                                    </fjx:FileUploader>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <p style="color: #ff0000;">Note: Banner gồm 2 ảnh có định dạng JPG</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Banner quảng cáo</p>
                                </td>
                                <td>
                                    <fjx:FileUploader ID="banner_saleoff" CssUrl="~/css/FileUploader.css" runat="server" AllowedFileTypes="Web Images (Jpeg, Gig, Png):*.jpg">
                                        <Adapters>
                                            <fjx:FileSaverAdapter runat="server" FolderName="images/sale-off" />
                                        </Adapters>
                                    </fjx:FileUploader>
                                </td>
                            </tr>
                        </table>
                        <div class="line-1"></div>
	                </div>
                    <%--THỐNG KÊ-------%>
                    <div id="tab-thongke" class="tab-content">
		                Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
	                </div>
                    <%--NHÀ CUNG CẤP-------%>
                    <div id="tab-nhacungcap" class="tab-content">
		                Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
	                </div>

                </div><!-- container -->
        </form>
    </body>
</html>
