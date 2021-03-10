using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;using System.Configuration;

public partial class Agent : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["un"] == null)
        {
            Response.Redirect("error.aspx");
        }

        if (Session["g"] == null)
        {
            Label1.Text = "Guest";

        }

        else
        {
            Label1.Text = Session["g"].ToString();
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
        }
    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("chnge agent pass.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("list of commission.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback list agent.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("messages agent.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("sentcouriersagent.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewAllocatedRequest.aspx");
    }

    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewAssignCourier.aspx");
    }
}
