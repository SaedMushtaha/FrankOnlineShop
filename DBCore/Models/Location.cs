// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;

namespace DBCore.Models
{
    public partial class Location
    {
        public Location()
        {
            Warehouses = new HashSet<Warehouse>();
        }

        public int Id { get; set; }
        public string Lat { get; set; }
        public string Long { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Warehouse> Warehouses { get; set; }
    }
}