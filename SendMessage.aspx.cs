using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SendMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String conumber = Request.QueryString["cno"];
        Label2.Text = conumber;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into AgentCourierMessage values(@aid,@cno,@status,@message,@dt)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@aid", Session["un"].ToString());
        mycomm.Parameters.AddWithValue("@cno", Label2.Text);
        mycomm.Parameters.AddWithValue("@status",DropDownList1.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@message", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label3.Text = "Message Added Successfully";

        
    }
}