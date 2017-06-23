using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// VMOrder 的摘要说明
/// </summary>
public class VMOrder
{
   public int ID { get; set; }
    public string time { get; set; }
    public string img { get; set; }
    public string name { get; set; }
    public string op1 { get; set; }
    public string op2 { get; set; }
    public string op1_type { get; set; }
    public string op2_type { get; set; }
    public double price{ get; set; }
    public double allprice { get; set; }
    public int number { get; set; }
    public string state { get; set; }
}