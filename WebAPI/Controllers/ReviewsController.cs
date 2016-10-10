using System;
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
    public class ReviewsController : ApiController
    {
        public void Post([FromBody]ProductModel value)
        {
            //TODO: Save this to a database next week!
            string connectionString = ConfigurationManager.ConnectionStrings["GemDB"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["gemDB"].ConnectionString))
            {
                connection.Open();
                SqlCommand command = connection.CreateCommand();
              

                command.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}
