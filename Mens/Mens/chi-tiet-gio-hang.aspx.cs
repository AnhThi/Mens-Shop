using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Business;
using System.Data;
using System.IO;

public partial class chi_tiet_gio_hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string sogh = Request.QueryString["sogh"].ToString();
            DataTable dt_chitiet = new DataTable();
            DataTable dt_giohang = new DataTable();
            dt_giohang = GioHangBUS.giohang_select();

            dt_chitiet = CTGioHangBUS.GTGioHang_GetbyId(sogh);
            grv_chitietgiohang.DataSource = dt_chitiet;
            grv_chitietgiohang.DataBind();

            double tonghoadon = 0;
            foreach (DataRow i in dt_chitiet.Rows)
            {
                tonghoadon += double.Parse(i["dgban"].ToString());
            }
            lbl_tonghoadon.InnerText = "Tổng cộng: " + tonghoadon.ToString("###,###") + " VNĐ";

            txt_sohoadon.Text = dt_giohang.Rows[0]["sogh"].ToString();
            txt_ngaylap.Text = DateTime.Now.ToString();
            txt_ngaykhdat.Text = dt_giohang.Rows[0]["ngaylap"].ToString();
            txt_email.Text = dt_giohang.Rows[0]["email"].ToString();
            txt_hoten.Text = dt_giohang.Rows[0]["tenkh"].ToString();
            txt_sdt.Text = dt_giohang.Rows[0]["sdt"].ToString();
            txt_diachi.Text = dt_giohang.Rows[0]["diachi"].ToString();
            //if(dt_giohang.Rows[0]["tinhtrang"].ToString()=="True")
            //{
            //    chb_xacnhan.Checked = true;
            //}
            //else
            //{
            //    chb_xacnhan.Checked = false;
            //}
            txt_ghichu.Text = dt_giohang.Rows[0]["ghichu"].ToString();
        }
        catch (Exception)
        {
            Response.Redirect("~/trang-chu.aspx");
        }
    }
    protected void btn_exportexcel_Click(object sender, EventArgs e)
    {

    }
    protected void btn_exportpdf_Click(object sender, EventArgs e)
    {
        System.Web.HttpResponse httpcurrent = System.Web.HttpContext.Current.Response;
        try
        {
            pdfcrowd.Client client = new pdfcrowd.Client("kiris", "aa2ac029eefa6cb805effd56c022e9d9");
            MemoryStream memo = new MemoryStream();

            string url = HttpContext.Current.Request.Url.AbsoluteUri;
            client.convertURI(url, memo);

            Response.Clear();
            Response.AddHeader("Content-Type", "application/pdf");
            Response.AddHeader("Cache-Control", "max-age=0");
            Response.AddHeader("Accept-Ranges", "none");
            Response.AddHeader("Content-Disposition", "attachment; filename=mens_hoadon.pdf");

            memo.WriteTo(Response.OutputStream);
            memo.Close();
            Response.Flush();
            Response.End();
        }
        catch (Exception)
        {

        }
    }
}