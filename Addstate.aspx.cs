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

public partial class Addstate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into Addstate values(@sname)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sname", TextBox1.Text);
      
        myconn.Open();
        int r =  mycomm.ExecuteNonQuery();
        myconn.Close();
        if(r==1)
        {
            Label1.Text="State added successfully";
            GridView1.DataBind();
        }
        else
        {
            Label1.Text="State not added successfully";
        }
    }
}
