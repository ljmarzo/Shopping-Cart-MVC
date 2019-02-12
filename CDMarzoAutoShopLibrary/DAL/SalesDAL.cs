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
    internal class SalesDAL : SalesBLL
    {
        private string _conStr = ConfigurationManager.ConnectionStrings["DbConnection"].ToString();
        protected override List<CDMAS> ShowAllSalesDAL()
        {
            var list = new List<CDMAS>();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("ShowAllSales", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var sales = new CDMAS();
                                sales.iName = reader["iName"].ToString();
                                sales.Qty = int.Parse(reader["Qty"].ToString());
                                sales.iSRP = float.Parse(reader["iSRP"].ToString());
                                sales.Subtotal = float.Parse(reader["Subtotal"].ToString());
                                sales.iNetPrice = float.Parse(reader["iNetPrice"].ToString());
                                sales.NetTotal = float.Parse(reader["NetTotal"].ToString());
                                sales.DatePurchased = DateTime.Parse(reader["DatePurchased"].ToString());
                                sales.GrossSales = decimal.Parse(reader["GrossSales"].ToString());
                                sales.NetSales = decimal.Parse(reader["NetSales"].ToString());
                                list.Add(sales);
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
        protected override CDMAS ShowSalesDAL()
        {
            var Sales = new CDMAS();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("ShowSales", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {



                                Sales.GrossSales = decimal.Parse(reader["GrossSales"].ToString());
                                Sales.NetSales = decimal.Parse(reader["NetSales"].ToString());


                            }

                            con.Close();
                        }
                    }
                }
            }
            catch
            {

            }

            return Sales;
        }
        protected override List<CDMAS> CreateSalesforthedayDAL()
        {
            var list = new List<CDMAS>();
            try
            {
                using (var con = new SqlConnection(_conStr))
                {

                    using (var cmd = new SqlCommand("CreateSalesfortheday", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var sales = new CDMAS();
                                sales.iName = reader["iName"].ToString();
                                sales.Qty = int.Parse(reader["Qty"].ToString());
                                sales.iSRP = float.Parse(reader["iSRP"].ToString());
                                sales.Subtotal = float.Parse(reader["Subtotal"].ToString());
                                sales.iNetPrice = float.Parse(reader["iNetPrice"].ToString());
                                sales.NetTotal = float.Parse(reader["NetTotal"].ToString());
                                sales.DatePurchased = DateTime.Parse(reader["DatePurchased"].ToString());
                                sales.GrossSales = decimal.Parse(reader["GrossSales"].ToString());
                                sales.NetSales = decimal.Parse(reader["NetSales"].ToString());
                                list.Add(sales);
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
