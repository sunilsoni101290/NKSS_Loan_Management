using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NKSS_Loan_Management.Models.BAL
{
    public class LoanPaymentDTO
    {
        public int payment_id { get; set; }
        public string payment_reference_number { get; set; }
        public int member_id { get; set; }
        public DateTime payment_date { get; set; }
        public double payment_amount { get; set; }
        public string proof_of_payment { get; set; }
        public int payment_status { get; set; }
        public string remarks { get; set; }
    }
}