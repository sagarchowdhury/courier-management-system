﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class delbranch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource3_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if(e.AffectedRows==0)
        {
            Label2.Text = "Records not found";
        }
    }
}
