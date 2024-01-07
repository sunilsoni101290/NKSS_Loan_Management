using NKSS_Loan_Management.Models.BAL;
using NKSS_Loan_Management.Models.Common;
using NKSS_Loan_Management.Models.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NKSS_Loan_Management.Admin
{
    public partial class AddNewMember : System.Web.UI.Page
    {
        RepositoryDAL repository = new RepositoryDAL();
        MemberDTO obj = new MemberDTO();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                    if (Request.Cookies["usercookie"]["username"] == null)
                    {
                        Response.Redirect("Index.aspx", false);
                    }
                }
                catch (Exception ex)
                {
                    ErrorLogger.ErrorLog("AddNewMember.apsx.cs", "Page_Load", ex.ToString());
                    Alert.ShowAlertMsg("Error occur while loading details....");

                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                obj.First_Name = txtFName.Text.Trim();
                obj.Middle_Name = txtMName.Text.Trim();
                obj.Last_Name = txtLName.Text.Trim();
                obj.Username = "M" + DateTime.Now.ToString("ddMMyyyy");
                obj.Contact_Number = txtContact.Text.Trim();
                obj.Email_Id = txtEmail.Text.Trim();
                obj.Residential_Address = txtAddress.Text.Trim();
                obj.DOB = Convert.ToDateTime(txtDOB.Text.Trim());
                obj.Age = CalculateYourAge(obj.DOB);
                if (FileUpload1.HasFile)
                {
                    //folder path to save uploaded file
                    string folderPath = Server.MapPath("~/images/Profile/");

                    //Check whether Directory (Folder) exists, although we have created, if it si not created this code will check
                    if (!Directory.Exists(folderPath))
                    {
                        //If folder does not exists. Create it.
                        Directory.CreateDirectory(folderPath);
                    }

                    //save file in the specified folder and path
                    FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

                    obj.Profile_picture = Path.GetFileName(FileUpload1.FileName).Trim();
                }
                else
                {
                    obj.Profile_picture = "avatar.png";
                }

                obj.Gender = ddlGender.SelectedItem.Value;

                dt = repository.AddNewMember(obj);

                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["StatusCode"].ToString() == "0")
                    {
                        Alert.ShowAlertMsg(dt.Rows[0]["msg"].ToString());
                    }
                    else
                    {
                        Alert.ShowAlertMsg(dt.Rows[0]["msg"].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("AddNewMember.aspx.cs", "btnSave_Click", ex.ToString());
                Alert.ShowAlertMsg("Error occur while saving data....");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearTextAll();
        }
        private void ClearTextAll()
        {
            txtFName.Text = string.Empty;
            txtMName.Text = string.Empty;
            txtLName.Text = string.Empty;
            txtContact.Text = string.Empty;
            txtEmail.Text = string.Empty;
            ddlGender.Items.Clear();
            txtDOB.Text = string.Empty;
            txtAddress.Text = string.Empty;
        }
        private int CalculateYourAge(DateTime Dob)
        {
            DateTime Now = DateTime.Now;
            int Years = new DateTime(DateTime.Now.Subtract(Dob).Ticks).Year - 1;
            return Years;
        }
    }
}