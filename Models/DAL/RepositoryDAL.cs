using NKSS_Loan_Management.Models.BAL;
using NKSS_Loan_Management.Models.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace NKSS_Loan_Management.Models.DAL
{
    public class RepositoryDAL:IDataSource
    {
        DataTable dt = new DataTable();
        SqlHelper sqlhelp = new SqlHelper();

        #region #Add Section
        public DataTable AddNewMember(MemberDTO Obj)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[11];
                param[0] = new SqlParameter("@First_Name", Obj.First_Name);
                param[1] = new SqlParameter("@Middle_Name", Obj.Middle_Name);
                param[2] = new SqlParameter("@Last_Name", Obj.Last_Name);
                param[3] = new SqlParameter("@Residential_Address", Obj.Residential_Address);
                param[4] = new SqlParameter("@Contact_Number", Obj.Contact_Number);
                param[5] = new SqlParameter("@Email_Id", Obj.Email_Id);
                param[6] = new SqlParameter("@Gender", Obj.Gender);
                param[7] = new SqlParameter("@DOB", Obj.DOB);
                param[8] = new SqlParameter("@Age", Obj.Age);
                param[9] = new SqlParameter("@Profile_picture", Obj.Profile_picture);
                param[10] = new SqlParameter("@Username", Obj.Username);

                dt = sqlhelp.GetTableFromSP("proc_SaveMemberDetails", param);

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {
                        return dt;
                    }
                    else
                    {
                        return dt;
                    }
                }
                else
                {
                    return dt;
                }
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("RepositoryDAL.cs", "AddNewMember", ex.ToString());
                return dt;
            }
        }
        public DataTable AddNewUser(UserDTO Obj)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[7];
                param[0] = new SqlParameter("@fullname", Obj.fullname);
                param[1] = new SqlParameter("@avatar", Obj.avatar);
                param[2] = new SqlParameter("@contact", Obj.contact);
                param[3] = new SqlParameter("@email", Obj.email);
                param[5] = new SqlParameter("@Gender", Obj.gender);
                param[6] = new SqlParameter("@status", Obj.status);

                dt = sqlhelp.GetTableFromSP("proc_SaveUserDetails", param);

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {
                        return dt;
                    }
                    else
                    {
                        return dt;
                    }
                }
                else
                {
                    return dt;
                }
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("RepositoryDAL.cs", "AddNewUser", ex.ToString());
                return dt;
            }
        }

        #endregion
        #region #Edit Section

        #endregion
        #region #Details Section
        public DataTable GetAllMemberLists()
        {
            try
            {
                dt = sqlhelp.GetTableFromSP("proc_GetAllMemberLists");

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {
                        return dt;
                    }
                    else
                    {
                        return dt;
                    }
                }
                else
                {
                    return dt;
                }
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("RepositoryDAL.cs", "GetAllMemberLists", ex.ToString());
                return dt;
            }
        }
        #endregion
        #region #Delete Section

        #endregion
        #region #Login Section
        public DataTable LoginCredendtial(LoginDTO Obj)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[2];
                param[0] = new SqlParameter("@uname", Obj.userName);
                param[1] = new SqlParameter("@password", Obj.password);
                dt = sqlhelp.GetTableFromSP("proc_LoginCredendtial", param);

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {
                        return dt;
                    }
                    else
                    {
                        return dt;
                    }
                }
                else
                {
                    return dt;
                }
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("RepositoryDAL.cs", "LoginCredendtial", ex.ToString());
                return dt;
            }
        }

        #endregion
        #region #Count Section
        public string GetTotalCount(string actiontype)
        {
            string result = "0";
            try
            {
                SqlParameter[] param = new SqlParameter[1];
                param[0] = new SqlParameter("@actiontype", actiontype);
                dt = sqlhelp.GetTableFromSP("proc_TotalCount", param);

                if (dt != null)
                {
                    result = dt.Rows[0]["TotalCount"].ToString();
                    return result;
                }
                else
                {
                    return result;
                }
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("RepositoryDAL.cs", "GetTotalCount", ex.ToString());
                return result;
            }
        }

        public DataTable GetMemberDetailsByID(int MemberId)
        {
            try
            {
                SqlParameter[] param = new SqlParameter[1];
                param[0] = new SqlParameter("@memberId", MemberId);

                dt = sqlhelp.GetTableFromSP("proc_SaveUserDetails", param);

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {
                        return dt;
                    }
                    else
                    {
                        return dt;
                    }
                }
                else
                {
                    return dt;
                }
            }
            catch (Exception ex)
            {
                ErrorLogger.ErrorLog("RepositoryDAL.cs", "AddNewUser", ex.ToString());
                return dt;
            }
        }

        public DataTable GetMemberDetailsByID()
        {
            throw new NotImplementedException();
        }
        #endregion
    }
}