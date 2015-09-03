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

public partial class bai_viet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Baiviet_Show();
            baiviettrong.Visible = false;
            if(BaivietBUS.Baiviet_Get().Rows.Count==0)
            {
                baiviettrong.Visible = true;
                baiviettrong.InnerText = "Không có bài viết để hiển thị";
            }
        }
    }

    public void Baiviet_Show()
    {
        dtl_baivietmoi.DataSource = BaivietBUS.Baiviet_Get();
        dtl_baivietmoi.DataBind();
    }
}