using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NKSS_Loan_Management.Models.BAL
{
    public class LoanApplicationDTO
    {
        public int application_id { get; set; }
        public int member_id { get; set; }
        public int loan_type_id { get; set; }
        public int payment_mode_type_id { get; set; }
        public double loan_amount { get; set; }
        public int loan_duration { get; set; }
        public string purpose { get; set; }
        public int loan_status { get; set; }
        public string remarks { get; set; }
    }
}