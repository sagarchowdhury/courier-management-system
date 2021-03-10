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
public partial class add_courier_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox12.Text.Length > 0)
            {
                SqlConnection myconn;
                SqlCommand mycomm;

                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string q = "insert into addcourierdetails values(@cno,@sn,@sad,@sp,@sa,@aun,@rn,@rad,@rp,@rs,@rc,@ra,@tp,@w,@dt,@p,@fc,@bun)";
                mycomm = new SqlCommand(q, myconn);
                mycomm.Parameters.AddWithValue("@cno", TextBox11.Text);
                mycomm.Parameters.AddWithValue("@sn", TextBox1.Text);
                mycomm.Parameters.AddWithValue("@sad", TextBox2.Text);
                mycomm.Parameters.AddWithValue("@sp", TextBox3.Text);
                if(RadioButtonList2.SelectedIndex==1)
                {
                    mycomm.Parameters.AddWithValue("@sa", DropDownList3.SelectedValue);
                    mycomm.Parameters.AddWithValue("@aun", DropDownList7.SelectedValue);
                }
                else
                {
                    mycomm.Parameters.AddWithValue("@sa", 0);
                    mycomm.Parameters.AddWithValue("@aun", "");
                }
                
                mycomm.Parameters.AddWithValue("@rn", TextBox5.Text);
                mycomm.Parameters.AddWithValue("@rad", TextBox6.Text);
                mycomm.Parameters.AddWithValue("@rp", TextBox7.Text);
                mycomm.Parameters.AddWithValue("@rs", DropDownList4.SelectedValue);
                mycomm.Parameters.AddWithValue("@rc", DropDownList5.SelectedValue);
                mycomm.Parameters.AddWithValue("@ra", DropDownList6.SelectedValue);
                mycomm.Parameters.AddWithValue("@tp", RadioButtonList1.SelectedItem.Text);
                mycomm.Parameters.AddWithValue("@w", TextBox10.Text);
                mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
                mycomm.Parameters.AddWithValue("@p", "Booked");
                mycomm.Parameters.AddWithValue("@fc", TextBox12.Text);
                mycomm.Parameters.AddWithValue("@bun", Session["un"].ToString());

                myconn.Open();
                int count = mycomm.ExecuteNonQuery();
                myconn.Close();

                if (count > 0 && RadioButtonList2.SelectedIndex == 1)
                {
                    double comm;
                    String qu5 = "select commision from addagent where email=@un";
                    mycomm = new SqlCommand(qu5, myconn);
                    mycomm.Parameters.AddWithValue("@un", DropDownList7.SelectedValue.ToString());
                    myconn.Open();
                    object x = mycomm.ExecuteScalar();
                    myconn.Close();
                    comm = ((Convert.ToDouble(TextBox12.Text) * Convert.ToDouble(x.ToString())) / 100);
                    q = "insert into addcomm values(@cono,@agun,@comm,@dt)";
                    mycomm = new SqlCommand(q, myconn);
                    mycomm.Parameters.AddWithValue("@cono", TextBox11.Text);
                    mycomm.Parameters.AddWithValue("@agun", DropDownList7.SelectedValue);
                    mycomm.Parameters.AddWithValue("@comm", comm);
                    mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
                    myconn.Open();
                    mycomm.ExecuteNonQuery();
                    myconn.Close();

                }
                if (count > 0)
                {
                    String qu5 = "select commision from addbranch where email=@un";
                    mycomm = new SqlCommand(qu5, myconn);
                    mycomm.Parameters.AddWithValue("@un", Session["un"].ToString());
                    myconn.Open();
                    Object x = mycomm.ExecuteScalar();
                    myconn.Close();
                    double comm = ((Convert.ToDouble(TextBox12.Text) * Convert.ToDouble(x.ToString())) / 100);
                    q = "insert into addbranchcomm values(@cono,@br,@comm,@dt)";
                    mycomm = new SqlCommand(q, myconn);
                    mycomm.Parameters.AddWithValue("@cono", TextBox11.Text);
                    mycomm.Parameters.AddWithValue("@br", Session["un"].ToString());
                    mycomm.Parameters.AddWithValue("@comm", comm);
                    mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
                    myconn.Open();
                    mycomm.ExecuteNonQuery();
                    myconn.Close();

                    if(RadioButtonList2.SelectedIndex==1)
                    {
                        Label2.Text = "Courier Booked successfully. Agent will extra commission as decided by the branch head";
                    }
                    else
                    {
                        Label2.Text = "Courier Booked";
                    }
                    
                }

            }
            else
            {
                Label2.Text = "Please click on calculate final cost or fill cost";
            }
        }
        catch(Exception ex)
        {
            Label2.Text = ex.Message;
        }


    }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Text = "";
            SqlConnection myconn;
            SqlCommand mycomm;

            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q = "select cost from addcost where source_state=@st and destination_state=@ds and type=@t";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@st", Session["stateid"]);
            mycomm.Parameters.AddWithValue("@ds", DropDownList4.SelectedValue);
            mycomm.Parameters.AddWithValue("@t", RadioButtonList1.SelectedItem.ToString());
            myconn.Open();
            object x = mycomm.ExecuteScalar();
            if (x == null)
            {
                Label3.Text = "50";
            }
            else
            {
                Label3.Text = x.ToString();
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

            if (RadioButtonList1.SelectedIndex == 1)
            {
                double w, r, tc;

                w = Convert.ToDouble(TextBox10.Text);
                r = Convert.ToDouble(Label3.Text);
                tc = w * r;
                TextBox12.Text = tc.ToString();
            }
            else
            {
                TextBox12.Text = Label3.Text;
                Panel1.Visible = false;
            }
        }
        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex >= 0)
            {
                SqlConnection myconn;
                SqlCommand mycomm;

                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string q = "select cost from addcost where source_state=@st and destination_state=@ds and type=@t";
                mycomm = new SqlCommand(q, myconn);
                mycomm.Parameters.AddWithValue("@st", Session["stateid"]);
                mycomm.Parameters.AddWithValue("@ds", DropDownList4.SelectedValue);
                mycomm.Parameters.AddWithValue("@t", RadioButtonList1.SelectedItem.ToString());
                myconn.Open();
                object x = mycomm.ExecuteScalar();
                if (x == null)
                {
                    Label3.Text = "50";
                }
                else
                {
                    Label3.Text = x.ToString();
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
                Label3.Text = "Please choose type to view cost";
            }
        }



    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(RadioButtonList2.SelectedIndex==1)
        {
            Panel2.Visible = true;
        }
        else
        {
            Panel2.Visible = false;
        }
    }
}
