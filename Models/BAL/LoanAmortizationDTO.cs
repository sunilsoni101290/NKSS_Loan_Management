using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NKSS_Loan_Management.Models.BAL
{
    public class LoanAmortizationDTO
    {
        public int amortization_id { get; set; }
        public string control_number { get; set; }
        public DateTime processed_date { get; set; }
        public double payment_amount { get; set; }
        public double interest_paid { get; set; }
        public double principal_paid { get; set; }
        public double remaining_balance { get; set; }
    }
}