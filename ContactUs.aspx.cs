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
public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into contactus values(@n,@eid,@pn,@qu,@dt)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@eid", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@pn", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@qu", TextBox4.Text);
      
        mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        { Label2.Text = "Thanks for contacting us, Your request will be considered soon" ; }
        else
        { Label2.Text = "Your request is not sucessfully posted,pls try again"; }
      
    }
}
