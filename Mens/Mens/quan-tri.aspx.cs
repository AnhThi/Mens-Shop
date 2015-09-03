using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using System.Data.SqlClient;
using Business;
using Entities;
using System.Collections;

public partial class quan_tri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            giohang_show();
        }
        if(Session["login"].ToString()!="admin")
        {
            Response.Redirect("~/trang-chu.aspx");
        }

        if (!IsPostBack)
        {
            Baiviet_Show();
            Danhmuc_Show();
            Mathang_Show();
            Thongtincuahang_Show();
            Thanhvien_Show();

            
        }
        Laymamathang();
        size_ao.Visible = true;
        size_quan.Visible = false;
        size_giay.Visible = false;
    }
    //-----------------------------BÀI VIẾT----------------------------------------
    public void Baiviet_Show()
    {
        grb_baiviet.DataSource = BaivietBUS.Baiviet_Get();
        grb_baiviet.DataBind();
    }


    protected void btn_dangbaiviet_Click(object sender, EventArgs e)
    {
        Baiviet bv = new Baiviet();
        bv.Mabv = DateTime.Now.ToString("yyyyMMddHHmmss");
        bv.Ngayviet = DateTime.Now;
        bv.Anhbaiviet = bv.Mabv + ".jpg";
        bv.Tieude = txt_tieude.Text;
        bv.Noidung = cke_editor.Text;
        if (ful_anhbaiviet.HasFile && bv.Tieude != "" && bv.Noidung != "" && bv.Tieude.Length < 80)
        {
            ful_anhbaiviet.SaveAs(Server.MapPath("~/images/common/") + ful_anhbaiviet.FileName);
            FileInfo info = new FileInfo(ful_anhbaiviet.FileName);
            if (info.Extension == ".jpg")
            {
                File.Move(Server.MapPath("~/images/common/") + info.Name, Server.MapPath("~/images/common/") + bv.Anhbaiviet);

                try
                {
                    BaivietBUS.Baiviet_Insert(bv);
                    Baiviet_Show();
                    Response.Redirect(Request.Url.AbsoluteUri);//Refresh để tránh tình trang add thêm dữ liệu vào
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Định dạng ảnh phải là JPEG(*.jpg)')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập đầy đủ dữ liệu hoặc tiêu đề quá dài')</script>");
        }
    }
    protected void grb_baiviet_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string mabv = grb_baiviet.DataKeys[e.RowIndex].Value.ToString();

        Baiviet bv = new Baiviet();

        bv.Mabv = mabv;
        BaivietBUS.Baiviet_Delete(bv);
        FileInfo file = new FileInfo(Server.MapPath("~/images/common/") + mabv + ".jpg");
        if (file.Exists)
        {
            file.Delete();
        }
        Baiviet_Show();
    }
    //-----------------------------MẶT HÀNG----------------------------------------
    public void Danhmuc_Show()
    {
        ddl_danhmuc.DataSource = DanhmucBUS.Danhmuc_Get();
        ddl_danhmuc.DataBind();
    }

    public void Mathang_Show()
    {
        grv_mathang.DataSource = MathangBUS.Mathang_Get();
        grv_mathang.DataBind();
    }
    protected void ddl_danhmuc_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddl_danhmuc.SelectedItem.ToString()=="Áo")
        {
            size_ao.Visible = true;
            size_quan.Visible = false;
            size_giay.Visible = false;
        }
        else if (ddl_danhmuc.SelectedItem.ToString() == "Quần")
        {
            size_ao.Visible = false;
            size_quan.Visible = true;
            size_giay.Visible = false;
        }
        else if (ddl_danhmuc.SelectedItem.ToString() == "Giày Dép")
        {
            size_ao.Visible = false;
            size_quan.Visible = false;
            size_giay.Visible = true;
        }
        else
        {
            size_ao.Visible = false;
            size_quan.Visible = false;
            size_giay.Visible = false;
        }
    }

    public void Laymamathang()
    {
        DataTable dt = new DataTable();
        string madanhmuc = ddl_danhmuc.SelectedValue.ToString();
        dt = MathangBUS.Mathang_GetbyDMTop1(madanhmuc);

        if(dt.Rows.Count!=0)
        {
            int macuoi = int.Parse(dt.Rows[0][0].ToString().Substring(2, 4));

            if (macuoi < 10)
            {
                txt_mamh.Text = madanhmuc + "000" + (macuoi + 1);
            }
            else if (macuoi < 100)
            {
                txt_mamh.Text = madanhmuc + "00" + (macuoi + 1);
            }
            else if (macuoi.ToString().Length == 3)
            {
                txt_mamh.Text = madanhmuc + "0" + (macuoi + 1);
            }
            else
            {
                txt_mamh.Text = madanhmuc + (macuoi + 1);
            }
        }
        else
        {
            txt_mamh.Text = madanhmuc + "0001";
        }
    }

    protected void btn_themmathang_Click(object sender, EventArgs e)
    {
        Mathang mh = new Mathang();

        mh.Mamh = txt_mamh.Text;
        mh.Tenmh = txt_tenmh.Text;
        mh.Hinhdd = mh.Mamh + ".jpg";
        mh.Madm = ddl_danhmuc.SelectedValue.ToString();
        mh.Mota = cke_mota.Text;
        mh.Giaban = decimal.Parse(txt_giaban.Text + "000");
        mh.Giagiam = decimal.Parse(txt_giagiam.Text + "000");
        if(ful_anhdaidien.HasFile && txt_tenmh.Text != "" && txt_giaban.Text != "" && txt_giagiam.Text != "" && cke_mota.Text != "")
        {
            
            FileInfo info = new FileInfo(ful_anhdaidien.FileName);
            if (info.Extension == ".jpg")
            {
                ful_anhdaidien.SaveAs(Server.MapPath("~/images/mat-hang/") + ful_anhdaidien.FileName);
                try
                {
                    File.Move(Server.MapPath("~/images/mat-hang/") + info.Name, Server.MapPath("~/images/mat-hang/") + mh.Hinhdd);
                }
                catch (Exception)
                {
                    
                }

                try
                {
                    MathangBUS.Mathang_Insert(mh);
                    List<string> ds_size = new List<string>();
                    if(ddl_danhmuc.SelectedValue=="AO")
                    {
                        if(size_S.Checked==true)
                        {
                            ds_size.Add("S");
                        }
                        if (size_M.Checked == true)
                        {
                            ds_size.Add("M");
                        }
                        if (size_L.Checked == true)
                        {
                            ds_size.Add("L");
                        }
                        if (size_XL.Checked == true)
                        {
                            ds_size.Add("XL");
                        }
                    }
                    else if(ddl_danhmuc.SelectedValue=="QU")
                    {
                        if (size_30.Checked == true)
                        {
                            ds_size.Add("30");
                        }
                        if (size_31.Checked == true)
                        {
                            ds_size.Add("31");
                        }
                        if (size_32.Checked == true)
                        {
                            ds_size.Add("32");
                        }
                        if (size_33.Checked == true)
                        {
                            ds_size.Add("33");
                        }
                        if (size_34.Checked == true)
                        {
                            ds_size.Add("34");
                        }
                    }
                    else if(ddl_danhmuc.SelectedValue=="GD")
                    {
                        if (size_40.Checked == true)
                        {
                            ds_size.Add("40");
                        }
                        if (size_41.Checked == true)
                        {
                            ds_size.Add("41");
                        }
                        if (size_42.Checked == true)
                        {
                            ds_size.Add("42");
                        }
                        if (size_43.Checked == true)
                        {
                            ds_size.Add("43");
                        }
                        if (size_44.Checked == true)
                        {
                            ds_size.Add("44");
                        }
                    }
                    else
                    {

                    }

                    foreach (string i in ds_size)
                    {
                        SizeBUS.Size_Insert(mh.Mamh, i);
                    }
                    Response.Redirect(Request.Url.AbsoluteUri);
                    Response.Write("<script>alert('Thêm mặt hàng thành công')</script>");
                    Mathang_Show();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Định dạng ảnh phải là JPEG(*.jpg)')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập đầy đủ thông tin')</script>");
        }  
    }
    //protected void grv_mathang_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    string mamh = grv_mathang.DataKeys[e.RowIndex].Value.ToString();
    //    Response.Write(mamh);
    //    try
    //    {
    //        SizeBUS.Size_Delete(mamh);
    //        MathangBUS.Mathang_Delete(mamh);
    //        FileInfo file = new FileInfo(Server.MapPath("~/images/mat-hang/") + mamh + ".jpg");
    //        if (file.Exists)
    //        {
    //            file.Delete();
    //        }
    //        Mathang_Show();
    //    }
    //    catch (Exception)
    //    {
    //        Response.Write("<script>alert('Xóa mặt hàng không thành công')</script>");
    //    }
    //}
    protected void grv_mathang_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grv_mathang.EditIndex = e.NewEditIndex;
        Mathang_Show();
    }
    protected void grv_mathang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grv_mathang.EditIndex = -1;
        Mathang_Show();
    }
    protected void grv_mathang_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txttenmh = (TextBox)grv_mathang.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtgiaban = (TextBox)grv_mathang.Rows[e.RowIndex].Cells[4].Controls[0];
        TextBox txtgiagiam = (TextBox)grv_mathang.Rows[e.RowIndex].Cells[5].Controls[0];

        string mamh = grv_mathang.DataKeys[e.RowIndex].Value.ToString();
        Mathang mh = new Mathang();

        mh.Mamh = mamh;
        mh.Tenmh = txttenmh.Text;
        mh.Giaban = decimal.Parse(txtgiaban.Text);
        mh.Giagiam = decimal.Parse(txtgiagiam.Text);

        try
        {
            MathangBUS.Mathang_Update(mh);           
            Response.Write("<script>alert('Cập nhật mặt hàng thành công')</script>");
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    //-----------------------------ĐƠN ĐẶT HÀNG----------------------------------------
    void giohang_show()
    {
        grv_dondathang.DataSource = GioHangBUS.giohang_select();
        grv_dondathang.DataBind();
    }
    public string Checktinhtrang(object obj) 
    { 
        bool b = bool.Parse(obj.ToString()); 
        if (b) return "Đã xác nhận"; 
        else return "Chưa xác nhận"; 
    }
    protected void grv_dondathang_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sogh = grv_dondathang.DataKeys[e.RowIndex].Value.ToString();
        GioHangBUS.giohang_delete(sogh);
        giohang_show();
    }
    protected void grv_dondathang_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string sogh = grv_dondathang.DataKeys[e.RowIndex].Value.ToString();
        bool tinhtrang = ((CheckBox)grv_dondathang.Rows[e.RowIndex].FindControl("chk_tinhtrang")).Checked;

        GioHangBUS.giohang_update(sogh, tinhtrang);
        grv_dondathang.EditIndex = -1;
        giohang_show();
    }
    protected void grv_dondathang_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grv_dondathang.EditIndex = e.NewEditIndex;
        giohang_show();
    }
    protected void grv_dondathang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grv_dondathang.EditIndex = -1;
        giohang_show();
    }
    protected void ddl_tinhtrang_SelectedIndexChanged(object sender, EventArgs e)
    {
        bool tinhtrang=true;
        if(ddl_tinhtrang.SelectedValue!="")
        {
            tinhtrang = bool.Parse(ddl_tinhtrang.SelectedValue);
            grv_dondathang.DataSource= GioHangBUS.giohang_selectBytinhtrang(tinhtrang);
            grv_dondathang.DataBind();
        }
        else
        {
            giohang_show();
        }
        
    }
    protected void grv_dondathang_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void grv_dondathang_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string sogh = grv_dondathang.DataKeys[e.NewSelectedIndex].Value.ToString();
        //Response.Write("<script>alert('" + sogh + "')</script>");
        ScriptManager.RegisterStartupScript(this, typeof(Page), "Chi Tiet", "OpenChiTietGioHang('" + sogh + "');", true);
    }
    protected void btn_tim_giohang_Bysogh_Click(object sender, EventArgs e)
    {
        string sogh = txt_sogh.Text;
        DataTable dt=GioHangBUS.giohang_selectBySogh(sogh);
        if(dt!=null)
        {
            grv_dondathang.DataSource = dt;
            grv_dondathang.DataBind();
        }
        else 
        {
            Response.Write("<script>alert('Số giỏ hàng không tồn tại')</script>");
        }
    }
    //-----------------------------THÀNH VIÊN----------------------------------------
    public void Thanhvien_Show()
    {
        grv_thanhvien.DataSource = ThanhvienBUS.Thanhvien_Get();
        grv_thanhvien.DataBind();
    }

    protected void grv_thanhvien_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string email = grv_thanhvien.DataKeys[e.RowIndex].Value.ToString();
        try
        {
            if (email == "mens")
            {
                Response.Write("<script>alert('Không thể Khóa tài khoản quản trị')</script>");
            }
            else
            {
                ThanhvienBUS.Thanhvien_Lock(email);
                Response.Write("<script>alert('Khóa tài khoản thành công')</script>");
                Thanhvien_Show();
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Xóa tài khoản thất bại')</script>");
        }
    }
    //-----------------------------THÔNG TIN CỬA HÀNG----------------------------------------
    public void Thongtincuahang_Show()
    {
        try
        {
            DataTable dt = new DataTable();
            dt = ThongtincuahangBUS.Thongtincuahang_Get();
            txt_thongtincuahang_diachi.Text = dt.Rows[0][0].ToString();
            txt_thongtincuahang_email.Text = dt.Rows[0][1].ToString();
            txt_thongtincuahang_sdt.Text = dt.Rows[0][2].ToString();
            txt_thongtincuahang_kinhdo.Text = dt.Rows[0][3].ToString();
            txt_thongtincuahang_vido.Text = dt.Rows[0][4].ToString();
        }
        catch (Exception)
        {
            
        }
    }
    protected void btn_thongtincuahang_sua_Click(object sender, EventArgs e)
    {
        Thongtincuahang ttch = new Thongtincuahang();
        ttch.Diachi = txt_thongtincuahang_diachi.Text;
        ttch.Email = txt_thongtincuahang_email.Text;
        ttch.Sdt = txt_thongtincuahang_sdt.Text;
        ttch.Kinhdo = txt_thongtincuahang_kinhdo.Text;
        ttch.Vido = txt_thongtincuahang_vido.Text;

        try
        {
            ThongtincuahangBUS.Thongtincuahang_Update(ttch);

            string mapcontent = "var myCenter = new google.maps.LatLng(" + ttch.Kinhdo + ", " + ttch.Vido + ");function initialize() {var mapProp = {center: myCenter,zoom: 16,mapTypeId: google.maps.MapTypeId.ROADMAP};var map = new google.maps.Map(document.getElementById('plugin-map'), mapProp);var marker = new google.maps.Marker({position: myCenter,});marker.setMap(map);}google.maps.event.addDomListener(window, 'load', initialize);";
            if (File.Exists(Server.MapPath("~/script/") + "google-map.js"))
            {
                File.Delete(Server.MapPath("~/script/") + "google-map.js");
                using (StreamWriter sw = File.CreateText(Server.MapPath("~/script/") + "google-map.js"))
                {
                    sw.Write(mapcontent);
                }
            }
            else
            {
                using (StreamWriter sw = File.CreateText(Server.MapPath("~/script/") + "google-map.js"))
                {
                    sw.Write(mapcontent);
                }
            }

            Response.Write("<script>alert('Cập nhật thành công')</script>");
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Cập nhật thất bại')</script>");
        }
    }
    //-----------------------------THỐNG KÊ----------------------------------------
    //-----------------------------NHÀ CUNG CẤP----------------------------------------

}