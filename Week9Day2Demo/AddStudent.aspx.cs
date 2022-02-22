using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Week9Day2Demo.Services;

namespace Week9Day2Demo
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void ButtonSave_OnClick(object sender, EventArgs e)
        {
            var studentsService = new StudentsService();

            var student = new Student
            {
                RollNo = int.Parse(TextBoxRollNo.Text),
                Name = TextBoxName.Text,
                DateOfBirth = DateTime.Parse(TextBoxDateOfBirth.Text, CultureInfo.InvariantCulture),
                Percentage = double.Parse(TextBoxPercentage.Text)
            };

            await studentsService.InsertAsync(student);

            divMessage.Visible = true;
        }

        protected void ButtonCancel_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Students.aspx");
        }
    }
}