using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class AllocateTOAgent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string q = "insert into allocaterequest values(@st,@ct)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@st", Request.QueryString["oid"]);
        mycomm.Parameters.AddWithValue("@ct", DropDownList1.SelectedValue.ToString());
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label2.Text = "Courier allocated to Agent sucessfully";
    }
}