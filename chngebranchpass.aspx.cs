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
using System.Data.SqlClient;using System.Configuration;
public partial class chngebranchpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "update addbranch  set Password=@np where Email=@un and Password=@op";

        mycomm = new SqlCommand(q, myconn);

        mycomm.Parameters.AddWithValue("@np", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@un", Session["un"].ToString());
        mycomm.Parameters.AddWithValue("@op", TextBox1.Text);

        myconn.Open();

        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "password changed successfully";
        }
        else
        {
            Label2.Text = "current password incorrect";
        }
    }
}
