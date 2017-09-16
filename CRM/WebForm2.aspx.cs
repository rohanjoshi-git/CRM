using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using BusinessObjects;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CRM
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BO_CRM objCRM = new BO_CRM();
            BLL objBLL = new BLL();

            objCRM.CustomerId = 0;
            DataTable dt = objBLL.GetOrders(objCRM); ;

            GridView2.DataSource = dt;
            GridView2.DataBind();


            if (dt.Rows.Count > 0)
            {
                DropDownList1.DataValueField = "Order Id"; //"Id";
                DropDownList1.DataTextField = "Order Number";  //"OrderNumber";
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();

                txtOrderNumber.Text = dt.Rows[4][2].ToString();
            }


            //in-line query
            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();

            using(SqlConnection conn = new SqlConnection(CS))
            {
                string sql = string.Format(@"select * from Customer");
                SqlCommand cmd = new SqlCommand(sql, conn);

                conn.Open();

                //SqlDataAdapter adapter = new SqlDataAdapter();

                SqlDataReader dr =  cmd.ExecuteReader();

                DropDownList2.DataSource = dr;
                DropDownList2.DataValueField = "Id";
                DropDownList2.DataTextField = "FirstName";
                DropDownList2.DataBind();

            }


        }
    }
}