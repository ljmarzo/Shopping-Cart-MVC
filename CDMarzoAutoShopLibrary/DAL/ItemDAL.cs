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
    internal class ItemDAL : ItemBLL
    {
        private string _conStr = ConfigurationManager.ConnectionStrings["DbConnection"].ToString();
        protected override bool UpdateItemDAL(CDMAS cdmas)
        {
            var result = 0;
            try
            {
                using (var con = new SqlConnection(_conStr))
                {
                    using (var cmd = new SqlCommand("UpdateItem", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        cmd.Parameters.AddWithValue("@IID", cdmas.iID);
                        cmd.Parameters.AddWithValue("@NAME", cdmas.iName);
                        cmd.Parameters.AddWithValue("@DESCRIPTION", cdmas.iDescription);
                        cmd.Parameters.AddWithValue("@SRP", cdmas.iSRP);
                        cmd.Parameters.AddWithValue("@NETPRICE", cdmas.iNetPrice);
                        cmd.Parameters.AddWithValue("@AQty", cdmas.iAQty);
                        cmd.Parameters.AddWithValue("@CATEGORY", cdmas.iCategory);
                        result = cmd.ExecuteNonQuery();
                        cmd.Dispose();
                    }
                }
            }
            catch (Exception)
            {
                throw new ApplicationException("UPDATE ITEM FAILED");
            }
            return result == 1 ? true : false;
        }

        protected override List<CDMAS> RetrieveAllItemDAL()
        {
            var list = new List<CDMAS>();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("RetrieveAllItem", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var item = new CDMAS();
                                item.iID = int.Parse(reader["iID"].ToString());
                                item.iName = reader["iName"].ToString();
                                item.iDescription = reader["iDescription"].ToString();
                                item.iSRP = float.Parse(reader["iSRP"].ToString());
                                item.iNetPrice = float.Parse(reader["iNetPrice"].ToString());
                                item.iAQty = int.Parse(reader["iAQty"].ToString());
                                item.iSQty = int.Parse(reader["iSQty"].ToString());
                                item.iCategory = reader["iCategory"].ToString();
                                list.Add(item);
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