using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
using Business;

using System.Data;

public partial class gio_hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        if(!IsPostBack)
        {
            try
            {
                if (Session["login"].ToString() == "guest")
                {
                    Response.Write("<script>alert('Bạn cần đăng nhập để có thể mua hàng')</script>");
                    giohangtable.Visible = false;
                }
                else
                {
                    giohangtable.Visible = true;
                }
                txt_khautru.Text = function.diemtichluy.ToString();

                double tongtien = 0;

                DataTable dt = (DataTable)Session["giohang"];
                grv_giohang.DataSource = dt;
                grv_giohang.DataBind();

                if ( dt.Rows.Count == 0)
                {
                    lbl_giohangrong.Visible = true;
                }
                else
                {
                    lbl_giohangrong.Visible = false;
                }

                foreach (DataRow i in dt.Rows)
                {
                    tongtien = tongtien + double.Parse(i["thanhtien"].ToString());                                       
                    lbl_tongtien.InnerText = tongtien.ToString();
                }
                txt_tenkhachhang.Text = function.hoten;
                txt_sdtgiaohang.Text = function.sdt;
                txt_diachigiaohang.Text = function.diachi;
            }
            catch (Exception)
            {
                
               
            }       
        }  
    }
    private void show_giohang()
    {
        DataTable dt = (DataTable)Session["giohang"];
        grv_giohang.DataSource = dt;
        grv_giohang.DataBind();
    }
    protected void btn_xoagiohang_Click(object sender, EventArgs e)
    {
        btn_xoagiohang.OnClientClick = "javascript:YNMessage('Bạn có muốn xóa giỏ hàng hay không?');";
        Session["giohang"] = null;
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void btn_thanhtoan_Click(object sender, EventArgs e)
    {
        if(Session["giohang"]!=null)
        {
            try
            {
                create_insert_giohang();
                Session["giohang"] = null;
                //Response.Redirect(Request.Url.AbsoluteUri);
                if(double.Parse(txt_khautru.Text)==0)
                {
                    ThanhvienBUS.Thanhvien_Set0DiemTichLuy(function.email);
                    function.diemtichluy = 0;
                }
                double tongtien = double.Parse(lbl_tongtien.InnerText);
                if(tongtien > 500000)
                {
                    ThanhvienBUS.Thanhvien_SumDiemTichLuy(function.email, "50000");
                    function.diemtichluy = function.diemtichluy + 50000;
                    Response.Write("<script>alert('Bạn đã được cộng 50000 VNĐ và điểm tích lũy')</script>");
                }
                else if (tongtien > 300000)
                {
                    ThanhvienBUS.Thanhvien_SumDiemTichLuy(function.email, "30000");
                    Response.Write("<script>alert('Bạn đã được cộng 30000 VNĐ và điểm tích lũy')</script>");
                    function.diemtichluy = function.diemtichluy + 30000;
                }
                else if(tongtien > 150000)
                {
                    ThanhvienBUS.Thanhvien_SumDiemTichLuy(function.email, "15000");
                    function.diemtichluy = function.diemtichluy + 15000;
                    Response.Write("<script>alert('Bạn đã được cộng 15000 VNĐ và điểm tích lũy')</script>");
                }
                else
                {

                }

                Response.Write("<script>alert('Bạn đã đặt hàng thành công! Chúng tôi sẽ giao hàng sớm cho bạn.')</script>");
            }
            catch (Exception)
            {
                
            }       
        }
        //else
        //{
        //    Session["giohang"] = null;
        //    Response.Redirect(Request.Url.AbsoluteUri);
        //}
        
    }
    void create_insert_giohang()
    {
        Gioihang gh = new Gioihang();
        //giỏ hàng
        gh.Sogh = sinh_sogh();
        gh.Ngaylap = DateTime.Now;
        gh.Email = function.email;
        gh.Tenkh = txt_tenkhachhang.Text;
        gh.Sdt = txt_sdtgiaohang.Text;
        gh.Diachi = txt_diachigiaohang.Text;
        gh.Ghichu = txt_ghichu.Text;
        gh.Tinhtrang = false;

        //CTGioHang
       
        GioHangBUS.giohang_insert(gh);

        if(Session["giohang"]!=null)
        {
            DataTable dt_ctgh = Session["giohang"] as DataTable;
            foreach (DataRow r in dt_ctgh.Rows)
            {
                ChitietGiohang ct = new ChitietGiohang();

                ct.Sogh = gh.Sogh;
                ct.Mamh = r["mamh"].ToString();
                ct.Size = r["size"].ToString();
                ct.Sl = int.Parse(r["sl"].ToString());
                ct.Dongia = decimal.Parse(r["khuyenmai"].ToString());

                CTGioHangBUS.CTGioHang_insert(ct);
            } 
            Session["giohang"] = null;           
        }
    }
    string sinh_sogh()
    {
        DateTime d = DateTime.Now;
        string ma = "GH" + d.Year + d.Month + d.Day + d.Hour + d.Minute + d.Second + d.Millisecond;
        return ma;
    }
    protected void grv_giohang_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //string ma = grv_giohang.DataKeys[e.RowIndex].Value.ToString();
        DataTable dt = (DataTable)Session["giohang"];
        dt.Rows.RemoveAt(e.RowIndex);
        Session["giohang"] = dt;
        grv_giohang.DataSource = dt;
        grv_giohang.DataBind();
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void grv_giohang_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DataTable dt = (DataTable)Session["giohang"];
        //int dong = e.RowIndex;
        try
        {
            TextBox sl= grv_giohang.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;
            if (int.Parse(sl.Text) > 5)
            {
                dt.Rows[e.RowIndex]["sl"] = 5;   
            }                     
            else
            {
                dt.Rows[e.RowIndex]["sl"] = int.Parse(sl.Text);
            }
        }
        catch (Exception)
        {
            dt.Rows[e.RowIndex]["sl"] = 1;           
        }
        dt.Rows[e.RowIndex]["thanhtien"] = int.Parse(dt.Rows[e.RowIndex]["sl"].ToString()) * double.Parse(dt.Rows[e.RowIndex]["khuyenmai"].ToString());
        show_giohang();
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void grv_giohang_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grv_giohang.EditIndex = e.NewEditIndex;
        show_giohang();
    }
    protected void grv_giohang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grv_giohang.EditIndex = -1;
        show_giohang();
    }
    protected void btn_khautru_Click(object sender, EventArgs e)
    {
        double khautru, tongtien, conlai;
        khautru=double.Parse(txt_khautru.Text);
        tongtien=double.Parse(lbl_tongtien.InnerText);
        if(khautru>500000 && tongtien>khautru)
        {
            conlai = tongtien - khautru;
            txt_khautru.Text = 0.ToString();
            lbl_tongtien.InnerText = conlai.ToString();
        }
        else
        {
            Response.Write("<script>alert('Điểm tích lũy của bạn phải lớn hơn 500000 VNĐ và giá trị đơn hiện tại phải trên 500000 VNĐ')</script>");
        }
    }
    protected void btn_troilai_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.AbsoluteUri);
        //btn_troilai.OnClientClick = "javascript:OpenChiTietGioHang('GH20154172034285')";
        //ScriptManager.RegisterStartupScript(this, typeof(Page), "Chi Tiet", "OpenChiTietGioHang('GH20154172034285');", true);
    }
}