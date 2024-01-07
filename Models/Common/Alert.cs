using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace NKSS_Loan_Management.Models.Common
{
    public static class Alert
    {
        public static void ShowAlertMsg(string sMsg)
        {
            Page page = HttpContext.Current.CurrentHandler as Page;
            string script = string.Format("alert('{0}');", sMsg);
            if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
            {
                page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", script, true);
            }
        }
    }
}