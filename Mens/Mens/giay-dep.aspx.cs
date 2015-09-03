using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Business;

public partial class ngay_dep : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            ddl_giaydep.DataSource = MathangBUS.Mathang_GetbyDM("GD");
            ddl_giaydep.DataBind();
        }
        catch (Exception)
        {

        }
    }
}