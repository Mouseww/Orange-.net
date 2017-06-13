using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Orange.ViewModel
{
    public class ShopCars
    {
        public int Id { get; set; }
        public string shop_name { get; set; }
        
        public int Number { get; set; }
        public string option1 { get; set; }
        public string option2 { get; set; }
        public int option1_id { get; set; }
        public int option2_id { get; set; }
        public int Commodity_id { get; set; }
        public string img { get; set; }
        public string img_small { get; set; }
        public string option1_name { get; set; }
        public string option2_name { get; set; }
        public double Price { get; set; }

        public double Old_Price { get; set; }
    }
}