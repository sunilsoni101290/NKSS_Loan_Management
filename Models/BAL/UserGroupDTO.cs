using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NKSS_Loan_Management.Models.BAL
{
    public class UserGroupDTO
    {
        public int group_id { get; set; }
        public string group_name { get; set; }
        public string description { get; set; }
        public int allow_add { get; set; }
        public int allow_edit { get; set; }
        public int allow_delete { get; set; }
        public int allow_print { get; set; }
        public int allow_import { get; set; }
        public int allow_export { get; set; }
    }
}