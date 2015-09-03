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

public partial class dang_nhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_dangnhap_submit_Click(object sender, EventArgs e)
    {
        string email = txt_email.Value;
        string matkhau = function.Mahoa(txt_matkhau.Value);
        DataTable dt = new DataTable();
        dt = ThanhvienBUS.Thanhvien_Login(email, matkhau);
        try
        {
            if (dt.Rows.Count != 0)
            {
                if(dt.Rows[0][0].ToString()=="mens")
                {
                    Session["login"] = "admin";

                    function.email = dt.Rows[0][0].ToString();
                    function.hoten = dt.Rows[0][2].ToString();
                    function.diachi = dt.Rows[0][3].ToString();
                    function.sdt = dt.Rows[0][4].ToString();
                    function.diemtichluy = decimal.Parse(dt.Rows[0][5].ToString());

                    Response.Redirect("~/trang-chu.aspx");
                }
                else
                {
                    Session["login"] = "member";

                    function.email = dt.Rows[0][0].ToString();
                    function.hoten = dt.Rows[0][2].ToString();
                    function.diachi = dt.Rows[0][3].ToString();
                    function.sdt = dt.Rows[0][4].ToString();
                    function.diemtichluy = decimal.Parse(dt.Rows[0][5].ToString());

                    Response.Redirect("~/trang-chu.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Đăng nhập thất bại')</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Đăng nhập thất bại')</script>");
        }
    }
}