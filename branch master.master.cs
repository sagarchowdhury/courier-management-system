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

public partial class branch : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (Session["un"] == null)
            {
                Response.Redirect("error.aspx");
            }


            if (Session["y"] == null)
            {
                Label1.Text = "Guest";


            }
            else
            {
                Label1.Text = Session["y"].ToString();
                LinkButton2.Visible = true;
                LinkButton3.Visible = true;
            }
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("chngebranchpass.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addagent.aspx");

    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add track Details.aspx");
    }
    //protected void LinkButton9_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Updateagent.aspx");
    //}
    //protected void LinkButton7_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("add courier details.aspx");
    //}
    //protected void LinkButton8_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("list of request.aspx");
    //}
    //protected void LinkButton6_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("sentcouriers.aspx");
    //}

    //protected void LinkButton10_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("DeleteAgent.aspx");
    //}

    //protected void LinkButton11_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("viewAssignAgent.aspx");
    //}

    //protected void LinkButton12_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("viewBranchComm.aspx");
    //}

    //protected void LinkButton13_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("AllocateTOAgent.aspx");
    //}
}

