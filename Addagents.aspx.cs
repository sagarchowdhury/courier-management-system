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
public partial class Addagents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        string q = "insert into addagent values(@st,@ct,@an,@em,@ps,@gn,@pn,@add,@aimg,@comm)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@st", Session["stateid"].ToString());
        mycomm.Parameters.AddWithValue("@ct", Session["cityid"].ToString());
        mycomm.Parameters.AddWithValue("@an", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@em", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@ps", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@gn", RadioButtonList1.SelectedItem.ToString());

        mycomm.Parameters.AddWithValue("@pn", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@add", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@aimg", FileUpload1.FileName);
        mycomm.Parameters.AddWithValue("@comm", TextBox6.Text);
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(MapPath("imgs/" + FileUpload1.FileName));
         
        }
        

        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "Agent added sucessfully";
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}
