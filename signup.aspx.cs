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
public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select name from signup where email=@eid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@eid", TextBox3.Text);
        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();
        if (x == null)
        {
            q = "insert into signup values(@n,@a,@gn,@eid,@pass,@pn,@ut)";

            mycomm = new SqlCommand(q, myconn);

            mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@a", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@eid", TextBox3.Text);

            mycomm.Parameters.AddWithValue("@pass", TextBox4.Text);

            mycomm.Parameters.AddWithValue("@pn", TextBox7.Text);
            mycomm.Parameters.AddWithValue("@ut", "Normal");
            if (RadioButton1.Checked == true)
            {
                mycomm.Parameters.AddWithValue("@gn", RadioButton1.Text);
            }
            else
            {
                mycomm.Parameters.AddWithValue("@gn", "Female");
            }



            myconn.Open();
            int res = mycomm.ExecuteNonQuery();
            myconn.Close();
            if (res == 1)
            { Response.Redirect("sucess.aspx"); }
            else
            { Label1.Text = "signup not sucessfull,pls try again"; }
        }
        else
        {
            Label2.Text = "Not Available";
        }
      
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int a;
        a = Convert.ToInt32(TextBox2.Text);
        if (a > 18)
        { args.IsValid = true; }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string q = "select name from signup where email=@eid";

        mycomm = new SqlCommand(q, myconn);

        mycomm.Parameters.AddWithValue("@eid", TextBox3.Text);


        myconn.Open();

        object x = mycomm.ExecuteScalar();
        myconn.Close();
        if (x == null)
        {
            Label2.Text = "Available";
        }
        else
        {
            Label2.Text = "Not Available";
        }
    }
}
