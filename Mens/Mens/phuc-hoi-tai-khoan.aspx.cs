using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text.RegularExpressions;
using Business;
using Entities;

public partial class phuc_hoi_tai_khoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["login"].ToString()!="guest")
        {
            Response.Redirect("~/trang-chu.aspx");
        }
        check_email.Visible = false;
    }
    protected void btn_phuchoitaikhoan_Click(object sender, EventArgs e)
    {
        string[] abc = { "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "A", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M"};

        string email = txt_email.Value;
        string email_phu = email;
        Random rr = new Random();
        string matkhau = abc[rr.Next(0, 25)] + abc[rr.Next(0, 25)] + abc[rr.Next(0, 25)] + abc[rr.Next(0, 25)] + abc[rr.Next(0, 25)] + abc[rr.Next(0, 25)] + abc[rr.Next(0, 25)] + abc[rr.Next(0, 25)];

        if (email_phu == "mens")
        {
            email_phu = email_phu + "@gmail.com";
        }

        
        if (!Regex.IsMatch(email_phu, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"))
        {
            check_email.Visible = true;
        }

        
        if (check_email.Visible == false)
        {
            try
            {
                ThanhvienBUS.Thanhvien_UpdatePassword(email, function.Mahoa(matkhau));
                function.SendMail_2(email_phu, matkhau);

                Response.Write("<script>alert('Cấp lại mật khẩu thành công. Truy cập và Mail của bạn để lấy mật khẩu mới')</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Cấp lại mật khẩu thất bại')</script>");
            }
        }
    }
}