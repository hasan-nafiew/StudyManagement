using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2.Admin
{
    public class COURSE
    {
        public int COURSEID { get; set; }
        public string COURSENAME { get; set; }
        public string COURSEDURATION { get; set; }
        public string COURSEQUALIFICATION { get; set; }
        public int COURSEFEE { get; set; }
        public string COURSEFEEMETHOD { get; set; }

    }
    public class cOURSEDATAACCESSLAYER
    {
        // Select Method for ObjectDataSource control
        public static List<COURSE> GetAllCOURSE()
        {
            List<COURSE> listCOURSE = new List<COURSE>();

            string CS = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select * from STUDYCOURSEINFO1", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    COURSE course = new COURSE();
                    course.COURSEID = Convert.ToInt32(rdr["COURSEID"]);
                    course.COURSENAME = rdr["COURSENAME"].ToString();
                    course.COURSEDURATION = rdr["COURSEDURATION"].ToString();
                    course.COURSEQUALIFICATION = rdr["COURSEQUALIFICATION"].ToString();
                    course.COURSEFEE = Convert.ToInt32(rdr["COURSEFEE"]);
                    course.COURSEFEEMETHOD = rdr["COURSEFEEMETHOD"].ToString();

                    listCOURSE.Add(course);
                }
            }


            return listCOURSE;
        }

        public static void DeleteCOURSE(int COURSEID)
        {
            string CS = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand
                    ("Delete from STUDYCOURSEINFO1 where COURSEID = @COURSEID", con);
                SqlParameter param = new SqlParameter("@COURSEID", COURSEID);
                cmd.Parameters.Add(param);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // Update Method for ObjectDataSource control
        public static int UpdateCOURSE(int COURSEID, string COURSENAME, string COURSEDURATION, string COURSEQUALIFICATION, int COURSEFEE, string COURSEFEEMETHOD)
        {
            string CS = ConfigurationManager.ConnectionStrings["STUDYMANAGEMENTConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string updateQuery = "Update STUDYCOURSEINFO1 SET COURSENAME = @COURSENAME,  " +
                    "COURSEDURATION = @COURSEDURATION, COURSEQUALIFICATION = @COURSEQUALIFICATION,COURSEFEE = @COURSEFEE , COURSEFEEMETHOD = @COURSEFEEMETHOD WHERE COURSEID = @COURSEID";
                SqlCommand cmd = new SqlCommand(updateQuery, con);
                SqlParameter paramOriginalCOURSEId = new
                    SqlParameter("@COURSEID", COURSEID);
                cmd.Parameters.Add(paramOriginalCOURSEId);
                SqlParameter paramCOURSEName = new SqlParameter("@COURSENAME", COURSENAME);
                cmd.Parameters.Add(paramCOURSEName);
                SqlParameter paramDURATION = new SqlParameter("@COURSEDURATION", COURSEDURATION);
                cmd.Parameters.Add(paramDURATION);
                SqlParameter paramQUALIFICATION = new SqlParameter("@COURSEQUALIFICATION", COURSEQUALIFICATION);
                cmd.Parameters.Add(paramQUALIFICATION);
                SqlParameter paramCOURSEFEE = new SqlParameter("@COURSEFEE", COURSEFEE);
                cmd.Parameters.Add(paramCOURSEFEE);
                SqlParameter paramCOURSEMETHOD = new SqlParameter("@COURSEFEEMETHOD", COURSEFEEMETHOD);
                cmd.Parameters.Add(paramCOURSEMETHOD);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }

        // Insert Method for ObjectDataSource control
        public static int InsertCOURSE(string COURSENAME, string COURSEDURATION, string COURSEQUALIFICATION, int COURSEFEE, string COURSEFEEMETHOD)
        {
            string CS = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string updateQuery = "Insert into STUDYCOURSEINFO1 (COURSENAME,COURSEDURATION,COURSEQUALIFICATION,COURSEFEE,COURSEFEEMETHOD)" +
                    " values (@COURSENAME, @COURSEDURATION, @COURSEQUALIFICATION,@COURSEFEE,@COURSEFEEMETHOD)";
                SqlCommand cmd = new SqlCommand(updateQuery, con);
                SqlParameter paramCOURSEName = new SqlParameter("@COURSENAME", COURSENAME);
                cmd.Parameters.Add(paramCOURSEName);
                SqlParameter paramDURATION = new SqlParameter("@COURSEDURATION", COURSEDURATION);
                cmd.Parameters.Add(paramDURATION);
                SqlParameter paramQUALIFICATION = new SqlParameter("@COURSEQUALIFICATION", COURSEQUALIFICATION);
                cmd.Parameters.Add(paramQUALIFICATION);
                SqlParameter paramCOURSEFEE = new SqlParameter("@COURSEFEE", COURSEFEE);
                cmd.Parameters.Add(paramCOURSEFEE);
                SqlParameter paramCOURSEMETHOD = new SqlParameter("@COURSEFEEMETHOD", COURSEFEEMETHOD);
                cmd.Parameters.Add(paramCOURSEMETHOD);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }
    }
}