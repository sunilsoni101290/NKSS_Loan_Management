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
    public partial class membermanagement : System.Web.UI.Page
    {
        RepositoryDAL repository = new RepositoryDAL();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                        if (Request.Cookies["usercookie"]["username"] != null)
                        {
                        #region Member Lists
                        dt = repository.GetAllMemberLists();
                        if (dt!= null)
                        {
                            if (dt.Rows.Count > 0)
                            {
                                gdvUserRecord.DataSource = dt;
                                gdvUserRecord.DataBind();
                            }
                        }
                        else
                        {
                            Alert.ShowAlertMsg("No Data Found.....!");
                        }
                        #endregion
                    }
                    else
                        {
                            Response.Redirect("Index.aspx", false);
                        }
                }
                catch (Exception ex)
                {
                    ErrorLogger.ErrorLog("membermanagement.aspx.cs", "Page_Load", ex.ToString());
                    Alert.ShowAlertMsg("Error occur while loading details.....!");
                }
            }
        }
    }
}