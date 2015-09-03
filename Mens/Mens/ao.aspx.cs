using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Business;

public partial class ao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            ddl_ao.DataSource = MathangBUS.Mathang_GetbyDM("AO");
            ddl_ao.DataBind();
        }
        catch (Exception)
        {
            
        }
    }
}