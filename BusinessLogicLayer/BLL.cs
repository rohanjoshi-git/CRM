using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer;
using BusinessObjects;

namespace BusinessLogicLayer
{
    public class BLL
    {
        public BLL()
        {
            
        }

    public DataTable GetOrders(BO_CRM objCRM)
        {
            DAL objDAL = new DAL();

            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = objDAL.AddParameter("@CustomerId", objCRM.CustomerId, SqlDbType.VarChar, 100);

            DataTable dt = objDAL.ExecuteDTByProcedure("SP_GetAllOrders", parameters);
            return dt;


        }

        public void AddNewOrder(BO_CRM objCRM)
        {
            DAL objDAL = new DAL();

            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = objDAL.AddParameter("@OrderDate", objCRM.OrderDate, SqlDbType.Date, 100);
            parameters[1] = objDAL.AddParameter("@OrderNumber", objCRM.OrderNumber, SqlDbType.VarChar, 10);
            parameters[2] = objDAL.AddParameter("@CustomerId", objCRM.CustomerId, SqlDbType.Int, 100);
            parameters[3] = objDAL.AddParameter("@TotalAmount", objCRM.TotalAmount, SqlDbType.Decimal, 12);

            objDAL.ExecuteDTByProcedure("SP_AddNewOrder", parameters);  
                
        }

    
    }
}
