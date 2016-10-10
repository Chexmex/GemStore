using Newtonsoft.Json.Linq;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    public class ProductController : ApiController
    {
        public IEnumerable  <ProductModel> Get()
        {
            List<ProductModel> model = new List<ProductModel>();

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["gemDB"].ConnectionString))
            {
                SqlCommand command = connection.CreateCommand();
                command.CommandText = "sp_GetProducts";
                command.CommandType = CommandType.StoredProcedure;
                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        ProductModel product = new ProductModel();
                        product.canPurchase = reader.GetBoolean(reader.GetOrdinal("CanPurchase"));
                        product.soldOut = reader.GetBoolean(reader.GetOrdinal("SoldOut"));
                        product.price = reader.GetDecimal(reader.GetOrdinal("Price"));
                        product.description = reader.GetString(reader.GetOrdinal("Description"));
                        product.name = reader.GetString(reader.GetOrdinal("Name"));
                        product.image = reader.GetString(reader.GetOrdinal("Image"));
                        product.ID = reader.GetInt32(reader.GetOrdinal("ID"));

                        List<ReviewModel> review = new List<ReviewModel>();
                        var newReview = review.First(x => x.ID == 0);
                        SqlCommand rcommand = connection.CreateCommand();
                        rcommand.CommandText = "sp_GetReviews";
                        rcommand.CommandType = CommandType.StoredProcedure;
                        rcommand.Parameters.AddWithValue("@ProductID", newReview.ID);
                        rcommand.Parameters.AddWithValue("@Stars", newReview.stars);
                        rcommand.Parameters.AddWithValue("@Body", newReview.body);
                        rcommand.Parameters.AddWithValue("@Author", newReview.author);
                        using (SqlDataReader reader2 = rcommand.ExecuteReader())
                        {
                            while(reader2.Read())
                            {
                                ReviewModel r = new ReviewModel();
                                r.stars = reader2.GetInt32(reader2.GetOrdinal("Stars"));
                                r.author = reader2.GetString(reader2.GetOrdinal("Author"));
                                r.body = reader2.GetString(reader2.GetOrdinal("Body"));
                                review.Add(r);
                                product.reviews = review.ToArray();
                            }
                        }
                        model.Add(product);
                    }
                }
               
                connection.Close();
            }
            return model;
        }
    }
}
