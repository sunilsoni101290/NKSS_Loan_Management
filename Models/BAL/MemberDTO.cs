using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NKSS_Loan_Management.Models.BAL
{
    public class MemberDTO
    {
        public int Member_Id { get; set; }
        public string First_Name { get; set; }
        public string Middle_Name { get; set; }
        public string Last_Name { get; set; }
        public string Residential_Address { get; set; }
        public string Contact_Number { get; set; }
        public string Email_Id { get; set; }
        public string Gender { get; set; }
        public DateTime DOB { get; set; }
        public int Age { get; set; }
        public string Profile_picture { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public int Account_Status { get; set; }
    }
}