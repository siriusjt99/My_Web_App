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

        protected void btnCreateDoctor_Click(object sender, EventArgs e)
        {
            
          
                // Retrieve the connection string from the web.config file
                string connectionString = ConfigurationManager.ConnectionStrings["doc_MConnectionString"].ConnectionString;

                // Define the query to insert a new Doctor record into the database
                string query = "INSERT INTO Doctors (Name, Specialization, PhoneNumber) VALUES (@Name, @Specialization, @PhoneNumber); SELECT SCOPE_IDENTITY()";

                // Create a new SqlConnection object and SqlCommand object
                using (SqlConnection connection = new SqlConnection(connectionString))
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Set the values of the parameters in the SqlCommand object
                    command.Parameters.AddWithValue("@DoctorName", txtDoctorName.Text);
                    command.Parameters.AddWithValue("@Specialization", txtDoctorSpecialization.Text);
                   

                    // Open the database connection
                    connection.Open();

                    // Execute the query and retrieve the generated Doctor ID
                    int doctorId = Convert.ToInt32(command.ExecuteScalar());

                    // Display the generated Doctor ID to the user
                    lblDoctorId.Text = "Doctor ID: " + doctorId.ToString();
                }
            

        }
    }
}