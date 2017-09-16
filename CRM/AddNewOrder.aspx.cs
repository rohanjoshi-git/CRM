using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObjects;
using BusinessLogicLayer;

namespace CRM
{
    public partial class AddNewOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["alert"] == "success")
                {
                    Response.Write("<script>alert('Record saved successfully');</script>");
                }
            }         
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            BO_CRM objCRM = new BO_CRM();
            BLL objBLL = new BLL();

            objCRM.OrderDate = Convert.ToDateTime(txtOrderDate.Text);    //Convert.ToDateTime(txtOrderDate.Text);
            objCRM.OrderNumber = txtOrderNumber.Text;
            objCRM.CustomerId = Convert.ToInt32(txtCustomerId.Text);
            objCRM.TotalAmount = Convert.ToDecimal(txtTotalAmount.Text);

            objBLL.AddNewOrder(objCRM);

            Response.Redirect("~/AddNewOrder.aspx?alert=success");
        }
    }
}