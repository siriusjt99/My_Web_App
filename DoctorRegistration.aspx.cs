using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace My_Web_App
{
    public partial class DoctorRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveDoctor_Click(object sender, EventArgs e)
        {
            //generate DoctorId
            string doctorId = GenerateDoctorId();

            //save doctor record
            SaveDoctorRecord(doctorId);

            //display doctor id
            lblDoctorId.Text = "Doctor ID: " + doctorId;
        }

        private string GenerateDoctorId()
        {
            //connect to database
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Doc_MConnectionString"].ConnectionString);
            con.Open();

            //query to get the latest doctor id
            string query = "SELECT TOP 1 DoctorId FROM DoctorRecords ORDER BY DoctorId DESC";

            //execute query
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            //get the latest doctor id
            string latestDoctorId = "";
            while (reader.Read())
            {
                latestDoctorId = reader["DoctorId"].ToString();
            }

            //close reader and connection
            reader.Close();
            con.Close();

            //generate new doctor id
            int newDoctorId = int.Parse(latestDoctorId) + 1;
            string doctorId = "D" + newDoctorId.ToString().PadLeft(4, '0');

            return doctorId;
        }

        private void SaveDoctorRecord(string doctorId)
        {
            //get input values from form
            string doctorName = txtDoctorName.Text.Trim();
            string specialization = txtSpecialization.Text.Trim();
            

            //connect to database
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Doc_MConnectionString"].ConnectionString);
            con.Open();

            //query to insert doctor record
            string query = "INSERT INTO DoctorRecords (DoctorId, DoctorName, Specialization, HospitalName) VALUES (@DoctorId, @DoctorName, @Specialization, @HospitalName)";

            //execute query
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@DoctorId", doctorId);
            cmd.Parameters.AddWithValue("@DoctorName", doctorName);
            cmd.Parameters.AddWithValue("@Specialization", specialization);
            cmd.Parameters.AddWithValue("@HospitalName", hospitalName);
            cmd.ExecuteNonQuery();

            //close connection
            con.Close();
        }
    }
}
