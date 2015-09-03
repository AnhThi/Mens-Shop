using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Business;

public partial class balo_tuixach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddl_balotuixach.DataSource = MathangBUS.Mathang_GetbyDM("BT");
        ddl_balotuixach.DataBind();
    }
}