using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class unpaid : System.Web.UI.Page
{
    DataSet myDs = new DataSet();
    SqlDataAdapter myDa;
    string OrderID;

    protected void Page_Load(object sender, EventArgs e)
    {
        OrderID = Request["id"].ToString();
        OrderBind();
        ListBind(OrderID);
    }

    public SqlConnection GetConnection()
    {
        string str = "Server=(local);User Id=sa;Pwd=123;Database=bookstore";
        SqlConnection con = new SqlConnection(str);
        return con;
    }

    public void ListBind(string id)
    {
        //string a = "20150713163744140";
        //string str1 = "select * from[book],[bookinorder],[order] where book.book_id = bookinorder.book_id and bookinorder.order_id = [order].order_id";

        myDs.Clear();
        string str1 = "select * from[book],[bookinorder],[order] where book.book_id = bookinorder.book_id and bookinorder.order_id = [order].order_id and [order].order_id = "+OrderID;
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str1, sqlcon);
        myDa.Fill(myDs);
        this.Order_unpayment.DataSource = myDs;
        this.Order_unpayment.DataBind();
        this.TotalPrice.Text = "订单总价："+Convert.ToDecimal(myDs.Tables[0].Rows[0]["totalmoney"]).ToString("0.00");
        sqlcon.Close();
    }

    public void OrderBind()
    {
        string str2 = "select top 5* from[book] order by visit desc";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str2, sqlcon);
        myDa.Fill(myDs);
        this.Orderview.DataSource = myDs;
        this.Orderview.DataBind();
        sqlcon.Close();
    }

    protected void SearchPress_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/product1.aspx?bookname=" + this.Search.Text.ToString());
    }

    protected void story_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/product1.aspx?cataid=1");
    }

    protected void policy_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/product1.aspx?cataid=6");
    }
    protected void Science_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/product1.aspx?cataid=3");
    }
    protected void LifeScience_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/product1.aspx?cataid=2");
    }
    protected void History_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/product1.aspx?cataid=4");
    }
    protected void Literature_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/product1.aspx?cataid=5");
    }

    protected void Payment_Click(object sender, EventArgs e)
    {
        string str3 = "Update [order] set ispayment=1,address="+this.Address.Text+",memo="+this.Memo.Text+",phone='"+this.Phonenumber.Text+"' where order_id = 20150713163744140";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        SqlCommand myCmd = new SqlCommand(str3, sqlcon);
        myCmd.ExecuteNonQuery();
        sqlcon.Close();
        
        Response.Redirect("~/Default2.aspx");
    }

    protected void book1_Click(object sender, EventArgs e)
    {
        string id = ((LinkButton)sender).CommandArgument;
        Response.Redirect("~/Default2.aspx?bookid="+id);
    }
}