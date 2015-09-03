using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text.RegularExpressions;
using Business;
using Entities;


public partial class dang_ki : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        check_hoten.Visible = false;
        check_email.Visible = false;
        check_matkhau.Visible = false;
        check_nhaplaimatkhau.Visible = false;
        check_sdt.Visible = false;
        check_diachi.Visible = false;
    }
    protected void btn_dangki_submit_Click(object sender, EventArgs e)
    {
        if(Regex.IsMatch(txt_hoten.Value.ToString(), @"[`1234567890-=;',./~!@#$%^&*()_+{}:|<>?]") || txt_hoten.Value=="")
        {
            check_hoten.Visible = true;
        }
        if (!Regex.IsMatch(txt_email.Value, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"))
        {
            check_email.Visible = true;
        }
        if (txt_matkhau.Value.Length < 8)
        {
            check_matkhau.Visible = true;
        }
        if(txt_nhaplaimatkhau.Value.Equals(txt_matkhau.Value)==false)
        {
            check_nhaplaimatkhau.Visible = true;
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
        if(txt_diachi.Value=="")
        {
            check_diachi.Visible = true;
        }

        if (check_email.Visible == false && check_hoten.Visible == false && check_matkhau.Visible == false && check_nhaplaimatkhau.Visible == false && check_sdt.Visible == false && check_diachi.Visible==false)
        {
            Thanhvien tv = new Thanhvien();
            tv.Email = txt_email.Value;
            tv.Matkhau=function.Mahoa(txt_matkhau.Value).ToString();
            tv.Hoten = txt_hoten.Value;
            tv.Diachi = txt_diachi.Value;
            tv.Sdt = txt_sdt.Value;
            tv.Kichhoat = "chua kich hoat";
            tv.Makichhoat = function.Mahoa(txt_email.Value);
            tv.Diemtichluy = 0;

            try
            {
                int check = ThanhvienBUS.Thanhvien_Insert(tv);
                if(check==0)
                {
                    function.SendMail(tv);
                    Response.Write("<script>alert('Đăng kí thành công. Bạn cần truy cập và mail để kích hoạt tài khoản và sử dụng')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Email này đã có người sử dụng')</script>");
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>" + ex.Message + "</script>");
            }
        }
    }
}