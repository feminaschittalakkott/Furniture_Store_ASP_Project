using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Furniture_Store
{
    public class ConnectionCls
    {
        SqlConnection con;
        SqlCommand cmd;
        public ConnectionCls()
        {
            con = new SqlConnection(@"server=FERIS_LAP07\SQLEXPRESS;database=e_com;Integrated security=true");
        }
        public int Fun_Nonquery(string query) // insert/delete/update
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(query, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }

        public void Fun_NonQuery_SP(SqlCommand cmd)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public string Fun_Scalar(string query) // scalar functions
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(query, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }
        public SqlDataReader Fun_Reader(string query) // select
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet Fun_DataSet(string query) // select
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable Fun_DataTable(string query) // select
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataSet Category()
        {
            string q = "select * from Category";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet Products()
        {
            string q = "select * from Products p left join Category c on p.Cat_Id = c.Cat_Id";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}