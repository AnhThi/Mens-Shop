using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Business;

public partial class trang_chu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            dtl_saletop6.DataSource = MathangBUS.Mathang_GetSaleTop6();
            dtl_saletop6.DataBind();
        }
    }
}