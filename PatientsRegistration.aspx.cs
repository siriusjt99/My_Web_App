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
    public partial class PatientsRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Retrieve the connection string from the web.config file
            string connectionString = ConfigurationManager.ConnectionStrings["doc_MConnectionString"].ConnectionString;

            // Define the query to insert a new Patient record into the database
            string query = "INSERT INTO Patients (Name, RegistrationDate, Age) VALUES (@Name, @RegistrationDate, @Age); SELECT SCOPE_IDENTITY()";

            // Create a new SqlConnection object and SqlCommand object
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Set the values of the parameters in the SqlCommand object
                command.Parameters.AddWithValue("@Name", txtPatientName.Text);
                command.Parameters.AddWithValue("@RegistrationDate", Convert.ToDateTime(txtRegistrationDate.Text));
                command.Parameters.AddWithValue("@Age", Convert.ToInt32(txtPatientAge.Text));

                // Open the database connection
                connection.Open();

                // Execute the query and retrieve the generated Patient ID
                int patientId = Convert.ToInt32(command.ExecuteScalar());

                // Display the generated Patient ID to the user
                lblPatientId.Text = "Patient ID: " + patientId.ToString();
            }
        }

    }
}