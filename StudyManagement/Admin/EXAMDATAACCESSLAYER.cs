using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace WebApplication2.Admin
{
    public class EXAM
    {
        public int EXAMID { get; set; }
        public string COURSENAME { get; set; }
        public string EXAMNAME { get; set; }
        public string EXAMDATE { get; set; }


    }
    public class EXAMDATAACCESSLAYER
    {
        // Select Method for ObjectDataSource control
        public static List<EXAM> GetAllCOURSE()
        {
            List<EXAM> listCOURSE = new List<EXAM>();

            string CS = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT EXAMID,EXAMNAME,EXAMDATE FROM STUDYEXAMINFO", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    EXAM course = new EXAM();
                    course.EXAMID = Convert.ToInt32(rdr["EXAMID"]);
                    course.EXAMNAME = rdr["EXAMNAME"].ToString();
                    course.EXAMDATE = rdr["EXAMDATE"].ToString();


                    listCOURSE.Add(course);
                }
            }


            return listCOURSE;
        }

        public static void DeleteCOURSE(int EXAMID)
        {
            string CS = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand
                    ("Delete from STUDYEXAMINFO where EXAMID = @EXAMID", con);
                SqlParameter param = new SqlParameter("@EXAMID", EXAMID);
                cmd.Parameters.Add(param);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // Update Method for ObjectDataSource control
        public static int UpdateCOURSE(int EXAMID, string EXAMNAME, string EXAMDATE)
        {
            string CS = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string updateQuery = "Update STUDYEXAMINFO SET EXAMNAME = @EXAMNAME,  " +
                    "EXAMDATE = @EXAMDATE  WHERE EXAMID = @EXAMID";
                SqlCommand cmd = new SqlCommand(updateQuery, con);
                SqlParameter paramOriginalEXAMId = new
                    SqlParameter("@EXAMID", EXAMID);
                cmd.Parameters.Add(paramOriginalEXAMId);
                SqlParameter paramEXAMNAME = new SqlParameter("@EXAMNAME", EXAMNAME);
                cmd.Parameters.Add(paramEXAMNAME);
                SqlParameter parameter = cmd.Parameters.Add("@EXAMDATE",
                    System.Data.SqlDbType.DateTime);

                // Set the value.
                parameter.Value = DateTime.Now;


                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }

        // Insert Method for ObjectDataSource control
        public static int InsertCOURSE(string EXAMNAME, string EXAMDATE)
        {
            string CS = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string updateQuery = "Insert into STUDYEXAMINFO (EXAMNAME,EXAMDATE)" +
                    " values (@EXAMNAME, @EXAMDATE)";
                SqlCommand cmd = new SqlCommand(updateQuery, con);

                SqlParameter paramCOURSEName = new SqlParameter("@EXAMNAME", EXAMNAME);
                cmd.Parameters.Add(paramCOURSEName);

                SqlParameter parameter = cmd.Parameters.Add("@EXAMDATE",
                    System.Data.SqlDbType.DateTime);

                // Set the value.
                parameter.Value = DateTime.Now;


                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }
    }
}