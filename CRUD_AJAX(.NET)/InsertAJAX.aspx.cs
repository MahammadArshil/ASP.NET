using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.Remoting.Contexts;

namespace AJAX_CRUD_6_
{
    public partial class InsertAJAX : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\Documents\MyDB.mdf;Integrated Security=True;Connect Timeout=30");
        string name, city, opr;
        string oldname, newname;
        protected void Page_Load(object sender, EventArgs e)
        {
            opr = Request.QueryString["opr"].ToString();
            if (opr == "insert")
            {
                name = Request.QueryString["nm"].ToString();
                city = Request.QueryString["ct"].ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Details values('" + name.ToString() + "','" +city.ToString() + "')";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (opr == "display")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Details";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                Response.Write("<table border='1'>");
                Response.Write("<tr>");
                Response.Write("<td>"); Response.Write("name"); Response.Write("</td>");
                Response.Write("<td>"); Response.Write("city"); Response.Write("</td>");
                Response.Write("</tr>");
                foreach (DataRow dr in dt.Rows)
                {
                    Response.Write("<tr>");
                    Response.Write("<td>"); Response.Write(dr["name"].ToString());
                    Response.Write("</td>");
                    Response.Write("<td>"); Response.Write(dr["city"].ToString());
                    Response.Write("</td>");
                    Response.Write("</tr>");
                }
                Response.Write("</table>");
                con.Close();
            }
            if (opr == "delete")
            {
                name = Request.QueryString["nm"].ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from Details where name='" + name.ToString() +"'";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (opr == "update")
            {
                oldname = Request.QueryString["oldname"].ToString();
                newname = Request.QueryString["newname"].ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update Details set name='" + newname.ToString() + "'where name = '"+oldname+"'";
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}