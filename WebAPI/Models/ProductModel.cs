using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.Models
{
    public class ProductModel
    {
 
        public int ID { get; set; }
        public string description { get; set; }
        public string name { get; set; }
        public decimal price { get; set; }
        public string image { get; set; }
        public bool canPurchase { get; set; }
        public bool soldOut { get; set; }
        public ReviewModel [] reviews { get; set; }
    }
}