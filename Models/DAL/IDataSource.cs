using NKSS_Loan_Management.Models.BAL;
using NKSS_Loan_Management.Models.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NKSS_Loan_Management.Models.DAL
{
    interface IDataSource
    {
        DataTable AddNewMember(MemberDTO Obj);
        DataTable AddNewUser(UserDTO Obj);
        DataTable LoginCredendtial(LoginDTO Obj);
        string GetTotalCount(string actiontype);
        DataTable GetAllMemberLists();
        DataTable GetMemberDetailsByID();
    }
}
