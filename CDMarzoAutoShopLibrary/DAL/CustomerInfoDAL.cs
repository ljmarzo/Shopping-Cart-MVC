using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using CDMarzoAutoShopLibrary.BLL;
using CDMASType;


namespace CDMarzoAutoShopLibrary.DAL
{
    internal class CustomerInfoDAL : CustomerInfoBLL
    {
        private string _conStr = ConfigurationManager.ConnectionStrings["DbConnection"].ToString();

        protected override bool CreateCustomerInfoDAL(CDMAS cdmas)
        {
            var result = 0;
            try
            {
                using (var con = new SqlConnection(_conStr))
                {
                    using (var cmd = new SqlCommand("CreateCustomerInfo", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        cmd.Parameters.AddWithValue("@FIRSTNAME", cdmas.FirstName);
                        cmd.Parameters.AddWithValue("@LASTNAME", cdmas.LastName);
                        cmd.Parameters.AddWithValue("@ADDRESS", cdmas.Address);
                        cmd.Parameters.AddWithValue("@CONTACTNO", cdmas.ContactNo);
                        cmd.Parameters.AddWithValue("@EMAIL", cdmas.Email);
                        cmd.Parameters.AddWithValue("@DELIVOPTION", cdmas.DelivOption);
                        result = cmd.ExecuteNonQuery();
                        cmd.Dispose();
                    }
                }
            }
            catch (Exception)
            {
                throw new ApplicationException("CREATE CUSTOMER INFORMATION FAILED");
            }
            return result == 1 ? true : false;
        }


        protected override CDMAS ShowCustomerInfoByCIDDAL(int cID)
        {
            var customerinfo = new CDMAS();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("ShowCustomerInfoByCID", con))
                    {
                        cmd.Parameters.Add("@cID", SqlDbType.Int).Value = cID;
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {

                                customerinfo.cID = int.Parse(reader["cID"].ToString());
                                customerinfo.FirstName = reader["FirstName"].ToString();
                                customerinfo.LastName = reader["LastName"].ToString();
                                customerinfo.Address = reader["Address"].ToString();
                                customerinfo.ContactNo = reader["ContactNo"].ToString();
                                customerinfo.Email = reader["Email"].ToString();
                                customerinfo.DelivOption = reader["DelivOption"].ToString();
                                customerinfo.Status = reader["Status"].ToString();
                                customerinfo.tTotal = decimal.Parse(reader["tTotal"].ToString());
                            }

                            con.Close();
                        }
                    }
                }
            }
            catch (Exception)
            {
                throw new ApplicationException("SHOW CUSTOMER INFORMATION FAILED");
            }

            return customerinfo;

        }



        protected override bool UpdateStatusDAL(CDMAS cdmas)
        {
            var result = 0;
            try
            {
                using (var con = new SqlConnection(_conStr))
                {
                    using (var cmd = new SqlCommand("UpdateStatus", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        cmd.Parameters.AddWithValue("@CID", cdmas.cID);
                        cmd.Parameters.AddWithValue("@STATUS", cdmas.Status);
                        result = cmd.ExecuteNonQuery();
                        cmd.Dispose();
                    }
                }
            }
            catch (Exception)
            {
                throw new ApplicationException("UPDATE STATUS FAILED");
            }
            return result == 1 ? true : false;
        }

        protected override List<CDMAS> RetrieveAllCustomerInfoDAL()
        {
            var list = new List<CDMAS>();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("RetrieveAllCustomerInfo", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var customerinfo = new CDMAS();
                                customerinfo.cID = int.Parse(reader["cID"].ToString());
                                customerinfo.FirstName = reader["FirstName"].ToString();
                                customerinfo.LastName = reader["LastName"].ToString();
                                customerinfo.Address = reader["Address"].ToString();
                                customerinfo.ContactNo = reader["ContactNo"].ToString();
                                customerinfo.Email = reader["Email"].ToString();
                                customerinfo.DelivOption = reader["DelivOption"].ToString();
                                customerinfo.Status = reader["Status"].ToString();
                                customerinfo.tTotal = decimal.Parse(reader["tTotal"].ToString());
                                list.Add(customerinfo);
                            }
                            con.Close();
                        }
                    }
                }
            }
            catch
            {
            }
            return list;
        }

        protected override bool DeleteCustomerInfoDAL(int cID)
        {
            var result = 0;
            try
            {
                using (var con = new SqlConnection(_conStr))
                {
                    using (var cmd = new SqlCommand("DeleteCustomerInfo", con))
                    {
                        con.Open();
                        cmd.Parameters.Add("@cID", SqlDbType.Int).Value = cID;
                        cmd.CommandType = CommandType.StoredProcedure;
                        result = cmd.ExecuteNonQuery();

                    }
                }
            }
            catch 
            {
                
            }
           
            return result == 1 ? true : false;
        }

    }
}
