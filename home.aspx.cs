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

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        if (RadioButtonList1.SelectedIndex == 0 || RadioButtonList1.SelectedIndex == 1)
        {
            string q = "select name from signup where email=@eid and password=@pass";

            mycomm = new SqlCommand(q, myconn);

            mycomm.Parameters.AddWithValue("@eid", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@pass", TextBox2.Text);

            myconn.Open();

            object x = mycomm.ExecuteScalar();
            myconn.Close();
            if (x == null)
            {
                Label2.Text = "Incorrect Username/Password";
            }
            else
            {
                Session.Add("a", x.ToString());
                Session.Add("un", TextBox1.Text);
                q = "select User_Type from signup where email=@eid ";

                mycomm = new SqlCommand(q, myconn);

                mycomm.Parameters.AddWithValue("@eid", TextBox1.Text);


                myconn.Open();

                object y = mycomm.ExecuteScalar();
                myconn.Close();
                if (y.ToString() == "admin")
                { Response.Redirect("adminpannel.aspx"); }
                else
                {
                    Response.Redirect("sucess1.aspx");
                }
            }
        }
        else if (RadioButtonList1.SelectedIndex == 2)
        {
            string q = "select * from addbranch where Email=@un and Password=@pass";
            mycomm = new SqlCommand(q, myconn);

            mycomm.Parameters.AddWithValue("@un", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@pass", TextBox2.Text);

            myconn.Open();

            SqlDataReader myreader = mycomm.ExecuteReader();
            if(myreader.HasRows)
            {
                myreader.Read();
                Session.Add("y", myreader["Branch_Name"].ToString());
                Session.Add("stateid", myreader["state"].ToString());
                Session.Add("cityid", myreader["City"].ToString());
                Session.Add("un", TextBox1.Text);
                Response.Redirect("branchpannel.aspx");
            }            
            else
            {
                Label2.Text = "Incorrect Username/Password";
            }
        }
        else if (RadioButtonList1.SelectedIndex == 3)
        {
            string q = "select Agenrt_Name from addagent where Email=@eid and Password=@pass";

            mycomm = new SqlCommand(q, myconn);

            mycomm.Parameters.AddWithValue("@Eid", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@Pass", TextBox2.Text);

            myconn.Open();

            object x = mycomm.ExecuteScalar();
            myconn.Close();
            if (x == null)
            {
                Label2.Text = "Incorrect Username/Password";
            }
            else
            {
                Session.Add("g", x.ToString());
                Session.Add("un", TextBox1.Text);


                Response.Redirect("agentpannel.aspx");
            }
        }


       
    }
   

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("aboutus.aspx");
    }

    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("whyus.aspx");
    }

    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("services.aspx");
    }

    protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("testimonials.aspx");
    }

    protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Domestic services.aspx");
    }

    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Response.Redirect("aboutus.aspx");
    }

    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Response.Redirect("whyus.aspx");
    }

    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        Response.Redirect("services.aspx");
    }

    protected void LinkButton15_Click(object sender, EventArgs e)
    {
        Response.Redirect("testimonials.aspx");
    }
}
