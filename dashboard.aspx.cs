using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Web_App
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Get the patient_id of the row being updated
            int patient_id = (int)e.Keys["patient_id"];

            // Get the new values from the GridView's EditItemTemplate
            string patient_name = (string)e.NewValues["patient_name"];
            DateTime date_of_registration = (DateTime)e.NewValues["date_of_registration"];
            string doctor_name = (string)e.NewValues["doctor_name"];

            // Update the database with the new values
            // (assuming a method named UpdatePatientInfo that takes the patient_id, patient_name, date_of_registration, and doctor_name as parameters)
            UpdatePatientInfo(patient_id, patient_name, date_of_registration, doctor_name);

            // Return to the regular display mode
            GridView1.EditIndex = -1;

            // Refresh the GridView to show the updated data
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the patient_id of the row being deleted
            int patient_id = (int)e.Keys["patient_id"];

            // Delete the row from the database
            // (assuming a method named DeletePatientInfo that takes the patient_id as a parameter)
            DeletePatientInfo(patient_id);

            // Refresh the GridView to show the updated data
            GridView1.DataBind();
        }

    }
}