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
    internal class OrderInfoDAL : OrderInfoBLL
    {
        private string _conStr = ConfigurationManager.ConnectionStrings["DbConnection"].ToString();
       
        protected override bool CreateOrderInfoDAL(CDMAS cdmas)
        {
            var result = 1;
            try
            {
                using (var con = new SqlConnection(_conStr))
                {
                    using (var cmd = new SqlCommand("CreateOrderInfo", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        cmd.Parameters.AddWithValue("@iID", cdmas.iID);
                        cmd.Parameters.AddWithValue("@Qty", cdmas.Qty);
                        result = cmd.ExecuteNonQuery();
                        cmd.Dispose();
                    }
                }
            }
            catch (Exception)
            {
                throw new ApplicationException("CREATE ORDER INFORMATION FAILED");
            }
            return result == 1 ? true : false;
        }

        protected override bool UpdateOrderInfoDAL(CDMAS cdmas)
        {
            var result = 0;
            try
            {
                using (var con = new SqlConnection(_conStr))
                {
                    using (var cmd = new SqlCommand("UpdateOrderInfo", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        cmd.Parameters.AddWithValue("@oID", cdmas.oID);
                        cmd.Parameters.AddWithValue("@Qty", cdmas.Qty);
                        result = cmd.ExecuteNonQuery();
                        cmd.Dispose();
                    }
                }
            }
            catch (Exception)
            {
                throw new ApplicationException("UPDATE ORDER INFORMATION FAILED");
            }
            return result == 1 ? true : false;
        }

        protected override CDMAS ShowOrderInfoByOIDDAL(int oID)
        {
            var orderinfo = new CDMAS();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("ShowOrderInfoByOID", con))
                    {
                        cmd.Parameters.Add("@oID", SqlDbType.Int).Value = oID;
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                orderinfo.oID = int.Parse(reader["oID"].ToString());
                                orderinfo.DatePurchased = DateTime.Parse(reader["DatePurchased"].ToString());
                                orderinfo.Qty = int.Parse(reader["Qty"].ToString());
                                orderinfo.Subtotal = float.Parse(reader["Subtotal"].ToString());
                                orderinfo.NetTotal = float.Parse(reader["NetTotal"].ToString());
                                orderinfo.iName = reader["iName"].ToString();
                                orderinfo.iID = int.Parse(reader["iID"].ToString());
                                orderinfo.FirstName = reader["FirstName"].ToString();
                                orderinfo.LastName = reader["LastName"].ToString();

                            }

                            con.Close();
                        }
                    }
                }
            }
            catch
            {

            }

            return orderinfo;

        }

        protected override List<CDMAS> ShowOrderInfoByCIDDAL(int cID)
        {
            var list = new List<CDMAS>();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("ShowOrderInfoByCID", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@CID", cID);
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var orderinfo = new CDMAS();
                                orderinfo.oID = int.Parse(reader["oID"].ToString());
                                orderinfo.Qty = int.Parse(reader["Qty"].ToString());
                                orderinfo.Subtotal = float.Parse(reader["Subtotal"].ToString());
                                orderinfo.iName = reader["iName"].ToString();
                                orderinfo.iID = int.Parse(reader["iID"].ToString());
                                list.Add(orderinfo);
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


        protected override bool DeleteOrderInfoDAL(int oID)
        {
            var result = 0;
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("DeleteOrderInfo", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@oID", oID);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            catch
            {
            }
            return result == 1 ? true : false;
        }

        protected override List<CDMAS> RetrieveAllOrderInfoDAL()
        {
            var list = new List<CDMAS>();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("RetrieveAllOrderInfo", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var orderinfo = new CDMAS();
                                orderinfo.oID = int.Parse(reader["oID"].ToString());
                                orderinfo.DatePurchased = DateTime.Parse(reader["DatePurchased"].ToString());
                                orderinfo.Qty = int.Parse(reader["Qty"].ToString());
                                orderinfo.Subtotal = float.Parse(reader["Subtotal"].ToString());
                                orderinfo.NetTotal = float.Parse(reader["NetTotal"].ToString());
                                orderinfo.iName = reader["iName"].ToString();
                                orderinfo.iID = int.Parse(reader["iID"].ToString());
                                orderinfo.FirstName = reader["FirstName"].ToString();
                                orderinfo.LastName = reader["LastName"].ToString();
                                orderinfo.iCategory = reader["iCategory"].ToString();
                                list.Add(orderinfo);
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


        protected override List<CDMAS> RetrieveOrderInfoByCIDDAL()
        {
            var list = new List<CDMAS>();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("RetrieveOrderInfoByCID", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var orderinfo = new CDMAS();
                                orderinfo.oID = int.Parse(reader["oID"].ToString());
                                orderinfo.iID = int.Parse(reader["iID"].ToString());
                                orderinfo.iName = reader["iName"].ToString();
                                orderinfo.Qty = int.Parse(reader["Qty"].ToString());
                                orderinfo.Subtotal = float.Parse(reader["Subtotal"].ToString());
                                orderinfo.Total = decimal.Parse(reader["Total"].ToString());
                                list.Add(orderinfo);
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
    }
}
