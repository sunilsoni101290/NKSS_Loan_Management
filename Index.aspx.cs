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

namespace NKSS_Loan_Management
{
    public partial class Index : System.Web.UI.Page
    {
        RepositoryDAL repository = new RepositoryDAL();
        LoginDTO obj = new LoginDTO();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lnkbtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtUserName.Text.ToString().Trim()) && !string.IsNullOrEmpty(txtPassword.Text.ToString().Trim()))
                {
                        obj.userName = txtUserName.Text.ToString().Trim();
                        obj.password = txtPassword.Text.ToString().Trim();

                        dt = repository.LoginCredendtial(obj);

                        if (dt.Rows.Count > 0)
                        {
                            DataRow dr = dt.Rows[0];
                            Session["username"] = dr["username"];
                            Session["name"] = dr["fullname"];
                            Session["userId"] = dr["User_Id"];
                            Session["role"] = dr["RoleName"];
                            Session["ProfileImage"] = dr["ProfileImage"];

                            HttpCookie cookie = new HttpCookie("usercookie");
                            cookie.Values.Add("username", obj.userName);
                            cookie.Values.Add("name", Session["name"].ToString());
                            cookie.Values.Add("userId", Session["userId"].ToString());
                            cookie.Values.Add("role", Session["role"].ToString());
                            cookie.Values.Add("ProfileImage", Session["ProfileImage"].ToString());

                            cookie.Expires = DateTime.Now.AddDays(1);
                            //Response.SetCookie(cookie);
                            cookie.HttpOnly = true;// cookie not available in javascript.
                            Response.Cookies.Add(cookie);
                            Response.Redirect("~/Admin/Dashboard.aspx", false);
                        }
                        else
                        {
                            lblErrorMsg.Text = "Invalid username or password";
                        }
                }
                ClearAllText();
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("Index.aspx.cs", "Index", ex.ToString());
                lblErrorMsg.Text = "Error occur while login.....!!')";
            }
        }
        public void ClearAllText()
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
        }
    }
}