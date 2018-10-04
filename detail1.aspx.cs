using System;
using System.Collections.Generic;
using System.Collections; 
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class detail1 : System.Web.UI.Page
{
    DataSet myDs = new DataSet();
    DataView view = new DataView();
    SqlDataAdapter myDa;
    //string userid = "1";

    protected void Page_Load(object sender, EventArgs e)
    {
        CommentBind();
        RateBind();
    }

    public SqlConnection GetConnection()
    {
        string str = "Server=(local);User Id=sa;Pwd=123;Database=bookstore";
        SqlConnection con = new SqlConnection(str);
        return con;
    }

    public void CommentBind()
    {
        string str1 = "select comm_id,user_name,comm_detail,score from[user],[comment] where [user].user_id = [comment].user_id";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str1, sqlcon);
        myDa.Fill(myDs);
        view = myDs.Tables[0].DefaultView;
        this.Comment_List.DataSource = myDs;
        this.Comment_List.DataBind();
        sqlcon.Close();
    }

    public void RateBind()
    {
        ArrayList ratelist = new ArrayList();
        ratelist.Add("非常满意");
        ratelist.Add("满意");
        ratelist.Add("一般");
        ratelist.Add("不满意");
        ratelist.Add("非常不满意");
        RateSelect.DataSource = ratelist;
        RateSelect.DataBind();
    }

    public int RateInt(string rate)
    {
        int rateint = 0;
        switch (rate)
        {
            case"非常满意":
                rateint = 0;
                break;
            case "满意":
                rateint = 1;
                break;
            case "一般":
                rateint = 2;
                break;
            case "不满意":
                rateint = 3;
                break;
            case "非常不满意":
                rateint = 4;
                break;
        }
        return rateint;
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default2.aspx?bookid=" + RateSelect.Text);

        /*string str2 = "insert into [comment] (user_id,book_id,comm_detail,score) values ('" + userid + "','1','" + this.Comment_input.Text + "','" + RateInt(this.RateSelect.Text)+"')";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        SqlCommand myCmd = new SqlCommand(str2, sqlcon);
        myCmd.ExecuteNonQuery();
        sqlcon.Close();*/
    }

}