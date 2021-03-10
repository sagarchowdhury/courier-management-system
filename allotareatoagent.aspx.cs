using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class allotareatoagent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            for (int x = 0; x < ListBox1.Items.Count; x++)
            {
                if (ListBox1.Items[x].Selected)
                {
                    SqlConnection myconn;
                    SqlCommand mycomm;

                    myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    string q = "insert into allotarea values(@aid,@arid)";
                    mycomm = new SqlCommand(q, myconn);
                    mycomm.Parameters.AddWithValue("@aid", DropDownList1.SelectedValue);
                    mycomm.Parameters.AddWithValue("@arid",ListBox1.Items[x].Value);

                    myconn.Open();
                    int res = mycomm.ExecuteNonQuery();
                    myconn.Close();
                   
                }
            }
            Label2.Text = "Area allotted successfully";
        }
        catch(Exception ex)
        {
            Label2.Text = ex.Message;
        }
    }
}