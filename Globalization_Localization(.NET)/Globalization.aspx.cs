using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Globalization_Localization_Demo
{
    public partial class Globalization : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            string lang = Request.Form["DropDownList1"];
            if(lang != null)
            {
                UICulture = lang;
                Culture = lang;
            }
            base.InitializeCulture();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            decimal money = 500;
            //09-01-2024  2024/01/09  //01/09/2024
            Label2.Text=DateTime.Now.ToShortDateString();
            Label3.Text=money.ToString("C"); 
        }
    }
}