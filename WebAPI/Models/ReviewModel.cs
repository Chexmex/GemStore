using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.Models
{
    public class ReviewModel
    {
        public string author { get; set; }
        public string body { get; set; }
        public int stars { get; set; }
        public int ProductID { get; set; }
        public int ID { get; set; }
    }
}