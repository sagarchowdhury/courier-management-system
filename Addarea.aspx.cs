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

public partial class Addarea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into addarea values(@aname,@cid,@sid)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@aname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@cid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@sid", DropDownList1.SelectedValue);
       
        myconn.Open();
       int res= mycomm.ExecuteNonQuery();
        myconn.Close();
        if(res==1)
        {
          Label1.Text="Area added successfully";
            GridView1.DataBind();
        }
        else
        { Label1.Text = "Area added successfully"; }
    }
}
