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
public partial class pickup_request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
        {
            Response.Redirect("error.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox12.Text.Length > 0)
        {
            SqlConnection myconn;
            SqlCommand mycomm;

            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q = "insert into pickupreq values(@sn,@sad,@se,@sp,@ss,@sc,@sa,@rn,@rad,@rp,@rs,@rc,@ra,@tp,@w,@p,@dt,@fc)";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@sn", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@sad", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@se", TextBox13.Text);
            mycomm.Parameters.AddWithValue("@sp", TextBox3.Text);

            mycomm.Parameters.AddWithValue("@ss", DropDownList1.SelectedValue);
            mycomm.Parameters.AddWithValue("@sc", DropDownList2.SelectedValue);
            mycomm.Parameters.AddWithValue("@sa", DropDownList3.SelectedValue);
            mycomm.Parameters.AddWithValue("@rn", TextBox5.Text);
            mycomm.Parameters.AddWithValue("@rad", TextBox6.Text);
            mycomm.Parameters.AddWithValue("@rp", TextBox7.Text);

            mycomm.Parameters.AddWithValue("@rs", DropDownList4.SelectedValue);
            mycomm.Parameters.AddWithValue("@rc", DropDownList5.SelectedValue);
            mycomm.Parameters.AddWithValue("@ra", DropDownList6.SelectedValue);
            mycomm.Parameters.AddWithValue("@p", "Processing");
            mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
            mycomm.Parameters.AddWithValue("@tp", RadioButtonList1.SelectedItem.Text);
            mycomm.Parameters.AddWithValue("@w", TextBox11.Text);
            mycomm.Parameters.AddWithValue("@fc", TextBox12.Text);
            myconn.Open();
            mycomm.ExecuteNonQuery();
            myconn.Close();
            Label3.Text = "Pickup requested successfully and please pay the amount to the courier person in cash or visit the branch to pay cash";
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            q = "select orderid from pickupreq where s_phone=@sph order by dateofrequest desc";
            mycomm = new SqlCommand(q, myconn);
            myconn.Open();
            mycomm.Parameters.AddWithValue("@sph", TextBox3.Text);
            Label4.Text = "Your reference number is " + mycomm.ExecuteScalar().ToString();

            myconn.Close();
        }
        else
        {
            Label3.Text = "Please click calculate cost button to proceed";
        }

        //Response.Redirect("cost of parcel.aspx");
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label5.Text = "";
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select cost from addcost where source_state=@st and destination_state=@d and type=@ty";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@st", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@d",DropDownList4.SelectedValue);
        mycomm.Parameters.AddWithValue("@ty", RadioButtonList1.SelectedItem.ToString());
        myconn.Open();
        object x = mycomm.ExecuteScalar();
        if (x == null)
        {
            Label2.Text = "50";
        }
        else
        {
            Label2.Text = x.ToString();
        }
        myconn.Close();
       

        if (RadioButtonList1.SelectedIndex == 1)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select top 1 charges from pickupcharges order by id desc";
        mycomm = new SqlCommand(q, myconn);
        myconn.Open();
        object x = mycomm.ExecuteScalar();
        if (RadioButtonList1.SelectedIndex == 1)
        {
            
            int w, r, tc;
            w = Convert.ToInt32(TextBox11.Text);
            r = Convert.ToInt32(Label2.Text);
            tc = (w * r) + Convert.ToInt16(x.ToString());
            
            TextBox12.Text = tc.ToString();
        }
        else
        {
            TextBox12.Text = Convert.ToString(Convert.ToInt32(Label2.Text) + Convert.ToInt16(x.ToString()));
            Panel1.Visible = false;
        }
        Label5.Text = "Extra pickup charges is="+x;
    }
  
    protected void DropDownList4_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex >= 0)
        {
            Label5.Text = "";
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q = "select cost from addcost where source_state=@st and destination_state=@d and type=@ty";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@st", DropDownList1.SelectedValue);
            mycomm.Parameters.AddWithValue("@d", DropDownList4.SelectedValue);
            mycomm.Parameters.AddWithValue("@ty", RadioButtonList1.SelectedItem.ToString());
            myconn.Open();
            object x = mycomm.ExecuteScalar();
            if (x == null)
            {
                Label2.Text = "0 ";
            }
            else
            {
                Label2.Text = x.ToString();
            }
            myconn.Close();


            if (RadioButtonList1.SelectedIndex == 1)
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel1.Visible = false;
            }
        }
        else
        {
            Label5.Text = "Please choose type of courier to view cost";
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex >= 0)
        {
            Label5.Text = "";
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q = "select cost from addcost where source_state=@st and destination_state=@d and type=@ty";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@st", DropDownList1.SelectedValue);
            mycomm.Parameters.AddWithValue("@d", DropDownList4.SelectedValue);
            mycomm.Parameters.AddWithValue("@ty", RadioButtonList1.SelectedItem.ToString());
            myconn.Open();
            object x = mycomm.ExecuteScalar();
            if (x == null)
            {
                Label2.Text = "0 ";
            }
            else
            {
                Label2.Text = x.ToString();
            }
            myconn.Close();


            if (RadioButtonList1.SelectedIndex == 1)
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel1.Visible = false;
            }
        }
        else
        {
            Label5.Text = "Please choose type of courier to view cost";
        }
    }
}

