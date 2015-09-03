using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Business;

public partial class phu_kien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            ddl_phukien.DataSource = MathangBUS.Mathang_GetbyDM("PK");
            ddl_phukien.DataBind();
        }
        catch (Exception)
        {

        }
    }
}