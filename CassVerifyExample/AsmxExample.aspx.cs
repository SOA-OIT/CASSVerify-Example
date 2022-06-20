using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CassVerifyExample.CassverifyReference;

namespace CassVerifyExample
{
    public partial class AsmxExample : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            lblRsltLine1.Text = string.Empty;
            lblRsltLine2.Text = string.Empty;
            lblRsltCityStateZip.Text = string.Empty;
            lblRsltCassVerified.Text = string.Empty;
            lblRsltReturnCode.Text = string.Empty;
            lblRsltGeneralRC.Text = string.Empty;

            var address = new CassverifyReference.CASSAddress();
            address.line1 = TextBox1.Text;
            address.line2 = TextBox2.Text;
            address.city = TextBox3.Text;
            address.state = TextBox4.Text;
            address.zip = TextBox5.Text;

            var CASService = new CassverifyReference.ServiceSoapClient("ServiceSoap"); //endpoint name in Web.Config
            CassverifyReference.CASSAddress returnAddress = CASService.verifyAddress(address);

            lblRsltLine1.Text = returnAddress.line1;
            lblRsltLine2.Text = returnAddress.line2;
            lblRsltCityStateZip.Text = returnAddress.city + " " + returnAddress.state + " " + returnAddress.zip;
            lblRsltCassVerified.Text = returnAddress.cassVerified.ToString();
            lblRsltReturnCode.Text = returnAddress.returncode;
            lblRsltGeneralRC.Text = returnAddress.generalRC;
        }
    }
}