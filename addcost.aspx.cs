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
public partial class addcost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into addcost values(@sst,@ds,@tp,@ct)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sst",DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@ds", DropDownList2.SelectedValue);


        if (RadioButton1.Checked == true)
        {
            mycomm.Parameters.AddWithValue("@tp", RadioButton1.Text);
            GridView1.DataBind();
        }
        else
        {
            mycomm.Parameters.AddWithValue("@tp", RadioButton2.Text);
        }
        mycomm.Parameters.AddWithValue("@ct", TextBox1.Text);
        


        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label2.Text = "Cost details added successfully";
        GridView1.DataBind();
    }
    
    

    }

