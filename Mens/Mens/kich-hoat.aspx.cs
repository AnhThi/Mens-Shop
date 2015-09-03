using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text.RegularExpressions;
using Business;
using Entities;

public partial class kich_hoat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_kichhoat_Click(object sender, EventArgs e)
    {
        string key;
        try
        {
            key = Request.QueryString["key"];
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Liên kết không đúng')</script>");
            return;
        }
        if (key == "")
        {
            Response.Redirect("~/trang-chu.aspx");
        }
        else
        {
            try
            {
                ThanhvienBUS.Thanhvien_Active(Request.QueryString["key"].ToString());
                Response.Write("<script>alert('Kích hoạt tài khoản thành công. Bạn có thể đăng nhập')</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Mã kích hoạt không đúng')</script>");
            }
        }
    }
}