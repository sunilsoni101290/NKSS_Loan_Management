using NKSS_Loan_Management.Models.BAL;
using NKSS_Loan_Management.Models.Common;
using NKSS_Loan_Management.Models.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NKSS_Loan_Management.Admin
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        //RepositoryDAL repository = new RepositoryDAL();
        //LoginDTO obj = new LoginDTO();
        //DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(!IsPostBack)
                {
                    if (Request.Cookies["usercookie"]["username"] != null)
                    {
                        lblName.Text = Request.Cookies["usercookie"]["name"].ToString();
                        hfvUserId.Value = Request.Cookies["usercookie"]["userId"].ToString();
                        hfvRoleName.Value = Request.Cookies["usercookie"]["role"].ToString();
                        if (Request.Cookies["usercookie"]["ProfileImage"] != null && Request.Cookies["usercookie"]["ProfileImage"].ToString() != "")
                        {
                            imgProfile.ImageUrl = "images/" + Request.Cookies["usercookie"]["ProfileImage"].ToString();
                        }
                        else
                        {
                            imgProfile.ImageUrl = "images/avatar.png";
                        }
                    }
                    else
                    {
                        Response.Redirect("Index.aspx", false);
                    }
                }
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("MainMasterPage.aspx.cs", "Page_Load", ex.ToString());
                Alert.ShowAlertMsg("Error occur while loading details.....!");
            }

        }
        protected void lnkbtnLogout_Click(object sender, EventArgs e)
        {
            try
            {
                Session["username"] = null;
                HttpContext.Current.Session.Clear();
                HttpContext.Current.Session.Abandon();

                Response.Redirect("~/Index.aspx");
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("MainMasterPage.aspx.cs", "lnkbtnLogout_Click", ex.ToString());
                Alert.ShowAlertMsg("Error occur while change the password.....!");
            }
        }

    }
}