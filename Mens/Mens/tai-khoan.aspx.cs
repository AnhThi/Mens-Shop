using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text.RegularExpressions;
using Business;
using Entities;

public partial class tai_khoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["login"].ToString()=="guest")
        {
            Response.Redirect("~/trang-chu.aspx");
        }

        check_matkhau.Visible = false;
        check_hoten.Visible = false;
        check_sdt.Visible = false;
        check_diachi.Visible = false;

        if(!IsPostBack)
        {
            txt_hoten.Value = function.hoten;
            txt_diachi.Value = function.diachi;
            txt_sdt.Value = function.sdt;
            lbl_diemtichluy.InnerText = function.diemtichluy.ToString();

            grv_hoadoncanhan.DataSource = GioHangBUS.Giohang_GetbyEmail(function.email);
            grv_hoadoncanhan.DataBind();
        }

    }
    protected void btn_chinhsua_submit_Click(object sender, EventArgs e)
    {
        if (txt_matkhau.Value.Length < 8)
        {
            check_matkhau.Visible = true;
        }

        if (Regex.IsMatch(txt_hoten.Value.ToString(), @"[`1234567890-=;',./~!@#$%^&*()_+{}:|<>?]") || txt_hoten.Value == "")
        {
            check_hoten.Visible = true;
        }

        if (!Regex.IsMatch(txt_sdt.Value, @"^[0-9]+$") || txt_sdt.Value == "")
        {
            if (txt_sdt.Value.Length == 10 || txt_sdt.Value.Length == 11)
            {
                check_sdt.Visible = false;
            }
            else
            {
                check_sdt.Visible = true;
            }
        }

        if (txt_diachi.Value == "")
        {
            check_diachi.Visible = true;
        }

        if(check_matkhau.Visible==false && check_hoten.Visible==false && check_sdt.Visible==false && check_diachi.Visible==false)
        {
            Thanhvien tv = new Thanhvien();
            tv.Email = function.email;
            tv.Matkhau = function.Mahoa(txt_matkhau.Value);
            tv.Hoten = txt_hoten.Value;
            tv.Diachi = txt_diachi.Value;
            tv.Sdt = txt_sdt.Value;

            try
            {
                ThanhvienBUS.Thanhvien_Update(tv);
                Response.Write("<script>alert('Cập nhật tài khoản thành công')</script>");
                function.hoten = txt_hoten.Value;
                function.diachi = txt_diachi.Value;
                function.sdt = txt_sdt.Value;
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Cập nhật tài khoản thất bại')</script>");
            }
        }
    }
    protected void grv_hoadoncanhan_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string sogh = grv_hoadoncanhan.DataKeys[e.NewSelectedIndex].Value.ToString();
        //Response.Write("<script>alert('" + sogh + "')</script>");
        ScriptManager.RegisterStartupScript(this, typeof(Page), "Chi Tiet", "OpenChiTietGioHang('" + sogh + "');", true);
    }
}