using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Business;
using System.Data;

public partial class tim_kiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string keyword=Request.QueryString["keyword"].ToString();
        try
        {
            if(keyword!=null)
            {
                DataTable dt = new DataTable();
                dt = MathangBUS.Mathang_SearchText(keyword);
                if(dt.Rows.Count==0)
                {
                    dt = MathangBUS.Mathang_SearchNum(decimal.Parse(keyword));
                }
                dtl_timkiem.DataSource = dt;
                dtl_timkiem.DataBind();
                lbl_search.Text = "Có " + dt.Rows.Count.ToString() + " mặt hàng với từ khóa " + keyword;
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
}