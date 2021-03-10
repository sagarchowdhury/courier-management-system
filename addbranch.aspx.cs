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

public partial class addbranch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into addbranch values(@st,@ct,@bn,@mn,@pn,@add,@ae,@ap,@comm)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@st", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@ct", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@bn", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@mn", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@pn", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@add", TextBox4.Text);
           mycomm.Parameters.AddWithValue("@ae", TextBox5.Text);
           mycomm.Parameters.AddWithValue("@ap", TextBox6.Text);
        mycomm.Parameters.AddWithValue("@comm", TextBox7.Text);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label2.Text = "Branch Added Successfully";
       
    }

    protected void SqlDataSource3_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if(e.AffectedRows==0)
        {
            Label3.Text = "No records found";
        }
        else
        {
            Label3.Text = "";
        }
    }
}
