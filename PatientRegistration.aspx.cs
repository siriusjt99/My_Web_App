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
    public partial class PatientRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSavePatient_Click(object sender, EventArgs e)
        {
            //generate PatientId
            string patientId = GeneratePatientId();

            //save patient record
            SavePatientRecord(patientId);

            //display patient id
            lblPatientId.Text = "Patient ID: " + patientId;
        }

        private string GeneratePatientId()
        {
            //connect to database
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Doc_MConnectionString"].ConnectionString);
            con.Open();

            //query to get the count of existing patient records
            string query = "SELECT COUNT(*) FROM Patients";

            //execute query
            SqlCommand cmd = new SqlCommand(query, con);
            int count = (int)cmd.ExecuteScalar();

            //close connection
            con.Close();

            //generate new patient id
            int newPatientId = count + 1;
            string patientId = "P" + newPatientId.ToString().PadLeft(4, '0');

            return patientId;
        }

        private void SavePatientRecord(string patientId)
        {
            //get input values from form
            string patientName = txtPatientName.Text.Trim();
            string registrationDate = txtRegistrationDate.Text.Trim();
            int age = int.Parse(txtAge.Text.Trim());
            string doctorName = txtDoctorName.Text.Trim();

            //connect to database
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Doc_MConnectionString"].ConnectionString);
            con.Open();

            //query to insert patient record
            string query = "INSERT INTO PatientRecords (PatientId, PatientName, RegistrationDate, Age, DoctorName) VALUES (@PatientId, @PatientName, @RegistrationDate, @Age, @DoctorName)";

            //execute query
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@PatientId", patientId);
            cmd.Parameters.AddWithValue("@PatientName", patientName);
            cmd.Parameters.AddWithValue("@RegistrationDate", registrationDate);
            cmd.Parameters.AddWithValue("@Age", age);
            cmd.Parameters.AddWithValue("@DoctorName", doctorName);
            cmd.ExecuteNonQuery();

            //close connection
            con.Close();
        }
    }
}
