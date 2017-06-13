
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Orange.ViewModel
{
    public class VMCommodity
    {
        
       public  int Id { get; set; }

        public string Name { get; set; }
        public string img { get; set; }
        public string jieshao { get; set; }
        public double Price { get; set; }
    }
}