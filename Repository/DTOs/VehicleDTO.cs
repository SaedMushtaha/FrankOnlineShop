using DBCore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.DTOs
{
    public class VehicleDTO : Vehicle
    {
        public string Lat { get; set; }
        public string Long { get; set; }
        public string WareHouseName { get; set; }
        public string LocationName { get; set; }
    }
}
