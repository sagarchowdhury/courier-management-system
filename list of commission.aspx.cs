using System;
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
using System.Data.SqlClient;
public partial class list_of_commission : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "select sum(CommAmt) from addcomm where agentusername=@agun";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@agun", Session["un"].ToString());
        myconn.Open();

        string comm = mycomm.ExecuteScalar().ToString();

        if (comm == "")
        {
            Label2.Text = "0";
        }
        else
        {
            Label2.Text = comm;
        }
        myconn.Close();
    }

    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if(e.AffectedRows==0)
        {
            Label3.Text = "Records not found";
        }
    }
}
