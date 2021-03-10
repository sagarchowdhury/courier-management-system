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
public partial class Addcity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into addcity values(@cname,@sid)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@sid", DropDownList1.SelectedValue);
     

        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label2.Text = "City Added Successfully";
        GridView1.DataBind();
    }
}
