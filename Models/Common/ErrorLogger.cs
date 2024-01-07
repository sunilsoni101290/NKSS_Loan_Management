using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Hosting;

namespace NKSS_Loan_Management.Models.Common
{
    public class ErrorLogger
    {
        public static bool ErrorLog(string ClassName, string MethodName, string sMsg)
        {
            try
            {
                WritToFile("ErrorLog_" + DateTime.Now.ToString("yyyyMMdd") + ".txt", "ErrorLogDate::" + DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss:ffff tt") + Environment.NewLine + "Class Name::" + ClassName + Environment.NewLine + "Method Name::" + MethodName + Environment.NewLine + "Error Message::" + sMsg + Environment.NewLine, false);
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }
        public static bool WritToFile(string sFile, string sFileData, bool CreateNew = false)
        {
            string logFilePath = HostingEnvironment.MapPath("~\\" + ConfigurationManager.AppSettings["LogFilePath"].Trim());
            StreamWriter Fs = null;
            try
            {
                if (System.IO.File.Exists(logFilePath + "\\" + sFile) == false)
                {
                    CreateNew = true;
                }
                if (CreateNew == true)
                {
                    Fs = File.CreateText(logFilePath + "\\" + sFile);
                }
                else
                {
                    Fs = File.AppendText(logFilePath + "\\" + sFile);
                }
                Fs.Write(sFileData + Environment.NewLine);
                Fs.Close();
                return true;
            }
            catch (DirectoryNotFoundException)
            {
                if (System.IO.Directory.Exists(logFilePath) == false)
                    System.IO.Directory.CreateDirectory(logFilePath);
                if (System.IO.File.Exists(logFilePath + "\\" + sFile) == false)
                    CreateNew = true;
                if (CreateNew == true)
                    Fs = File.CreateText(logFilePath + "\\" + sFile);
                else
                    Fs = File.AppendText(logFilePath + "\\" + sFile);
                Fs.Write(sFileData);
                Fs.Close();
                return false;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}