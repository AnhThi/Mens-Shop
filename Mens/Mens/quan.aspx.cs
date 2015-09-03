using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Business;

public partial class quan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddl_quan.DataSource = MathangBUS.Mathang_GetbyDM("QU");
        ddl_quan.DataBind();
    }
}