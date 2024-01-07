using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NKSS_Loan_Management.Models.BAL
{
    public class UserDTO
    {
        public int user_id { get; set; }
        public string fullname { get; set; }
        public string avatar { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string contact { get; set; }
        public string email { get; set; }
        public string gender { get; set; }
        public int user_group_id { get; set; }
        public int status { get; set; }
    }
}