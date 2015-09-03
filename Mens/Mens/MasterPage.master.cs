using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text.RegularExpressions;
using Business;
using Entities;
using System.Data;
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["login"].ToString()=="guest")
        {
            btn_trangquantri.Visible = false;
            btn_dangnhap.Visible = true;
            btn_dangxuat.Visible = false;
            btn_dangki.Visible = true;
            btn_nguoidung.Visible = false;
        }
        else if(Session["login"].ToString()=="member")
        {
            btn_trangquantri.Visible = false;
            btn_dangnhap.Visible = false;
            btn_dangxuat.Visible = true;
            btn_dangki.Visible = false;
            btn_nguoidung.Visible = true;

            btn_nguoidung.Text = function.hoten;
        }
        else
        {
            btn_trangquantri.Visible = true;
            btn_dangnhap.Visible = false;
            btn_dangxuat.Visible = true;
            btn_dangki.Visible = false;
            btn_nguoidung.Visible = true;

            btn_nguoidung.Text = function.hoten;
        }
       
        if(Session["login"].ToString()!="member")
        {
            Session["giohang"] = null;
        }
        

        DataTable dt = new DataTable();
        dt = ThongtincuahangBUS.Thongtincuahang_Get();

        show_soluong_giohang();

        lbl_diachi_.Text = dt.Rows[0][0].ToString();
        lbl_email_.Text = dt.Rows[0][1].ToString();
        lbl_dienthoai_.Text = dt.Rows[0][2].ToString();
    }
    void show_soluong_giohang()
    {
        DataTable dt = Session["giohang"] as DataTable;
        if(dt==null)
        {
            txt_soluongdat.Text = "0";
        }
        else
        {
            txt_soluongdat.Text = dt.Rows.Count.ToString();
        }
    }
    protected void btn_trangquantri_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/quan-tri.aspx");
    }
    protected void btn_dangnhap_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dang-nhap.aspx");
    }
    protected void btn_dangxuat_Click(object sender, EventArgs e)
    {
        Session["login"] = "guest";
        Response.Redirect("~/trang-chu.aspx");
    }
    protected void btn_dangki_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dang-ki.aspx");
    }
    protected void btn_tim_Click(object sender, EventArgs e)
    {
        if(txt_tim.Value!="")
        {
            Response.Redirect("~/tim-kiem.aspx?keyword=" + txt_tim.Value);
        }
    }
    protected void btn_nguoidung_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tai-khoan.aspx");
    }
}
