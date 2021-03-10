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
public partial class Add_track_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select city from addbranch where email=@eid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@eid", Session["un"].ToString());
        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();
        q = "select city_name from addcity where city_id=@cid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cid", x.ToString());
        myconn.Open();
        object y = mycomm.ExecuteScalar();
        myconn.Close();
        Label2.Text = y.ToString();
        if (Request.QueryString["coid"] != null)
        {
            q = "select * from agentcouriermessage where couriernumber=@cno order by updatedate desc";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@cno", Request.QueryString["coid"]);
            myconn.Open();
            SqlDataReader data = mycomm.ExecuteReader();
            data.Read();
            TextBox1.Text = data[2].ToString();
            DropDownList1.Text = data["status"].ToString();
            TextBox2.Text = data["message"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into Trackdetails values(@cn,@loc,@br,@st,@dt,@mess)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cn", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@loc", Label2.Text);
        mycomm.Parameters.AddWithValue("@br", Session["un"].ToString());
        mycomm.Parameters.AddWithValue("@st", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
        mycomm.Parameters.AddWithValue("@mess", TextBox2.Text);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label3.Text = "Tracking Details Added";
        if(DropDownList1.SelectedItem.Text == "Out for Delivery")
        {
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            q = "insert into agentcourier values(@cn,@aid,@alotdt,@bid)";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@cn", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@aid", DropDownList2.SelectedValue);
            mycomm.Parameters.AddWithValue("@alotdt", DateTime.Now);
            mycomm.Parameters.AddWithValue("@bid", Session["un"].ToString());
            myconn.Open();
            mycomm.ExecuteNonQuery();
            myconn.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedItem.Text== "Out for Delivery")
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }

       
    }
}