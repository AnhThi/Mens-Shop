using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using System.Data.SqlClient;
using Business;
using Entities;


public partial class chi_tiet_bai_viet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string id = Request.QueryString["article"].ToString();
            DataTable dt=new DataTable();
            dt=BaivietBUS.Baiviet_GetbyId(id);
            if (dt.Rows.Count!=0)
            {
                dtl_chitietbaiviet.DataSource = dt;
                dtl_chitietbaiviet.DataBind();
            }
            else
            {
                Response.Redirect("~/bai-viet.aspx");
            }
        }
        catch (Exception)
        {
            Response.Redirect("~/bai-viet.aspx");
        }
    }
}