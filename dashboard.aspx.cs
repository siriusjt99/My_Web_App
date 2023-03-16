using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace My_Web_App
{
    public partial class dashboard : System.Web.UI.Page
    {
        private void BindGridView()
        {
            // Retrieve the data from the database
            string connectionString = ConfigurationManager.ConnectionStrings["Doc_MConnectionString"].ConnectionString;
            string query = "SELECT * FROM Patients";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            // Bind the data to the GridView control
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Get the values from the edit form
            string patientID = e.Keys["PatientID"].ToString();
            string patientName = e.NewValues["PatientName"].ToString();
            string registrationDate = e.NewValues["RegistrationDate"].ToString();
            string age = e.NewValues["Age"].ToString();
            string doctorName = e.NewValues["DoctorName"].ToString();

            // Update the database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Doc_MConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("UPDATE Patients SET PatientName=@PatientName, RegistrationDate=@RegistrationDate, Age=@Age, DoctorName=@DoctorName WHERE PatientID=@PatientID", conn);
            cmd.Parameters.AddWithValue("@PatientID", patientID);
            cmd.Parameters.AddWithValue("@PatientName", patientName);
            cmd.Parameters.AddWithValue("@RegistrationDate", registrationDate);
            cmd.Parameters.AddWithValue("@Age", age);
            cmd.Parameters.AddWithValue("@DoctorName", doctorName);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            GridView1.EditIndex = -1;
            BindGridView();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the value of the key field
            string patientID = e.Keys["PatientID"].ToString();

            // Delete the record from the database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Doc_MConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("DELETE FROM Patients WHERE PatientID=@PatientID", conn);
            cmd.Parameters.AddWithValue("@PatientID", patientID);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            BindGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGridView();
        }
    }
}