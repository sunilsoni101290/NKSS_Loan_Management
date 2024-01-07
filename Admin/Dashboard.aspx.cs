using NKSS_Loan_Management.Models.Common;
using NKSS_Loan_Management.Models.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NKSS_Loan_Management.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        RepositoryDAL repository = new RepositoryDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    lblTotalUserCount.Text = repository.GetTotalCount("U");
                }
                catch (Exception ex)
                {
                    ErrorLogger.ErrorLog("Dashboard.aspx.cs", "Page_Load", ex.ToString());
                    Alert.ShowAlertMsg("Error occur while loading data.....!");
                }
            }   
        }
    }
}