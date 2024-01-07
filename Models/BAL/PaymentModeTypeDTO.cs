using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NKSS_Loan_Management.Models.BAL
{
    public class PaymentModeTypeDTO
    {
        public int payment_type_id { get; set; }
        public string payment_mode { get; set; }
        public string description { get; set; }
    }
}