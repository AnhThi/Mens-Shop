using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Business;
using System.Data;

public partial class chi_tiet : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {    
        try
        {            
            string mamh = Request.QueryString["pro"].ToString();
            string madm = mamh.Substring(0, 2).ToString();

            DataTable dt_mathang = new DataTable();//lấy các thông tin của mặt hàng
            dt_mathang = MathangBUS.Mathang_GetbyId(mamh);
            DataTable dt_size = null;
            if (!IsPostBack)
            {
                dt_size = SizeBUS.Size_GetbyId(mamh);//lấy size tương ứng với mặt hàng
            }

            if (dt_mathang.Rows.Count != 0)
            {
                dtl_chitiet_anh.DataSource = dt_mathang;
                dtl_chitiet_anh.DataBind();

                dtl_chitiet_tenmh.DataSource = dt_mathang;
                dtl_chitiet_tenmh.DataBind();

                ddl_muangay_size.DataSource = dt_size;
                ddl_muangay_size.DataTextField = "loaisize";
                ddl_muangay_size.DataValueField = "loaisize";
                ddl_muangay_size.DataBind();

                dtl_chitiet_baiviet.DataSource = dt_mathang;
                dtl_chitiet_baiviet.DataBind();

                dtl_khacloai.DataSource = MathangBUS.Mathang_GetbyNotSameCategory(madm);
                dtl_khacloai.DataBind();

                dtl_cungloai.DataSource = MathangBUS.Mathang_GetbySameCategory(madm, mamh);
                dtl_cungloai.DataBind();
            }
            else
            {
                Response.Redirect("~/trang-chu.aspx");
            }
        }
        catch (Exception)
        {
            Response.Redirect("~/trang-chu.aspx");
        }
    }
    protected void btn_chovaogiohang_Click(object sender, EventArgs e)
    {
        if (Session["login"].ToString() == "member")
        {
            try
            {
                string mamh = Request.QueryString["pro"].ToString();

                DataTable dt_mathang = new DataTable();
                dt_mathang = MathangBUS.Mathang_GetbyId(mamh);//lấy các thông tin của mặt hàng

                string hinhdd, tenmh, size;

                hinhdd = dt_mathang.Rows[0]["hinhdd"].ToString();
                tenmh = dt_mathang.Rows[0]["tenmh"].ToString();
                //madm = dt_mathang.Rows[0]["madm"].ToString();
                size = ddl_muangay_size.SelectedValue;
                double khuyenmai = double.Parse(dt_mathang.Rows[0]["khuyenmai"].ToString());

                ThemVaoGioHang(hinhdd, mamh, tenmh, size, khuyenmai);

                Response.Redirect("gio-hang.aspx");
            }
            catch (Exception)
            {


            }                        
        }
        else
        {
            Response.Redirect("dang-nhap.aspx");
        }
        
    }
    public void ThemVaoGioHang(string hinhdd,string mamh,string tenmh,string size,double khuyenmai)
    {
        DataTable dt;
        int sl = 1;
        double thanhtien = sl * khuyenmai;
        if (Session["giohang"] == null)
        {           
            dt = new DataTable();
            dt.Columns.Add("hinhdd");
            dt.Columns.Add("mamh");
            dt.Columns.Add("tenmh");
            dt.Columns.Add("size");
            dt.Columns.Add("sl");
            dt.Columns.Add("khuyenmai");
            dt.Columns.Add("thanhtien");
        }
        else
            dt = (DataTable)Session["giohang"];

        int dong = MHdacotronggiohang(mamh,size, dt);

        if (dong != -1)
        {
            if (Convert.ToInt32(dt.Rows[dong]["sl"])<5)
            {
                dt.Rows[dong]["sl"] = Convert.ToInt32(dt.Rows[dong]["sl"]) + 1;
                dt.Rows[dong]["thanhtien"] = int.Parse(dt.Rows[dong]["sl"].ToString()) * double.Parse(dt.Rows[dong]["khuyenmai"].ToString());
            }           
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["hinhdd"] = hinhdd;
            dr["mamh"] = mamh;
            dr["tenmh"] = tenmh;
            dr["size"] = size;
            dr["sl"] = 1;
            dr["khuyenmai"] = khuyenmai;
            dr["thanhtien"] = thanhtien;
            
            dt.Rows.Add(dr);
        }
        Session["giohang"] = dt;
    }
    public static int MHdacotronggiohang(string mamh,string size, DataTable dt)
    {
        int dong = -1;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i]["mamh"].ToString() == mamh && dt.Rows[i]["size"].ToString()==size)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }


}