using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CassVerifyExample.CassVerifyV2;
namespace CassVerifyExample
{
    public partial class SvcExample : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            lblRsltLine1.Text = string.Empty;
            lblRsltLine2.Text = string.Empty;
            lblRsltCityStateZip.Text = string.Empty;
            lblRsltComments.Text = string.Empty;
            lblRsltFinalistReturnCode.Text = string.Empty;
            lblRsltDPVCRMAFlag.Text = string.Empty;
            lblRsltDPVFalsePosFlag.Text = string.Empty;
            lblRsltDPVFlag.Text = string.Empty;
            lblRsltDPVFootnotes.Text = string.Empty;
            lblRsltDeliveryPt.Text = string.Empty;

            var address = new CassVerifyV2.AddressQuery();
            address.Line1 = TextBox1.Text;
            address.Line2 = TextBox2.Text;
            address.City = TextBox3.Text;
            address.State = TextBox4.Text;
            address.Zip = TextBox5.Text;

            var CASService = new CassVerifyV2.CASSVerifyServiceContractClient("BasicHttpsBinding_CASSVerifyServiceContract");

            var returnAddress = CASService.VerifyAddress("", address);
            
            lblRsltLine1.Text = returnAddress.Line1;
            lblRsltLine2.Text = returnAddress.Line2;
            lblRsltCityStateZip.Text = returnAddress.City + " " + returnAddress.State + " " + returnAddress.Zip;
            lblRsltComments.Text = returnAddress.Comments.ToString();
            lblRsltDPVCRMAFlag.Text = returnAddress.DPV.DPVCMRAFlag.ToString();
            lblRsltDPVFalsePosFlag.Text = returnAddress.DPV.DPVFalsePostiveFlag.ToString();
            lblRsltDPVFlag.Text = returnAddress.DPV.DPVFlag.ToString();
            lblRsltDPVFootnotes.Text = String.Join(",", returnAddress.DPV.DPVFootNotes);
            lblRsltDeliveryPt.Text = returnAddress.DPV.DeliveryPoint;
            lblRsltFinalistReturnCode.Text = returnAddress.FinalistReturnCode.ToString();
        }
    }
}