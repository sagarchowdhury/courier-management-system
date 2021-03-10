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
public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into feedback values(@n,@eid,@pn,@ov,@d,@sr,@in,@f,@sg,@dt)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@n", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@eid", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@pn", TextBox4.Text);

        mycomm.Parameters.AddWithValue("@ov", RadioButtonList1.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@d", RadioButtonList2.SelectedItem.ToString());


        mycomm.Parameters.AddWithValue("@sr", RadioButtonList3.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@in", RadioButtonList4.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@f", RadioButtonList5.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@sg", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        { Response.Redirect("feedbacksuccess.aspx"); }
        else
        { Label2.Text = "feedback not sucessfull,pls try again"; }
      
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
