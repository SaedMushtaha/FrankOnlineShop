using DBCore.Data;
using DBCore.Models;
using Microsoft.EntityFrameworkCore;
using Repository.IRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Repository.Repository
{
    public class WareHouseRepository : IWareHouseRepository
    {
        private readonly WarehousesContext _context;
        public WareHouseRepository(WarehousesContext context)
        {
            _context = context;
        }


        public async Task<IReadOnlyList<Vehicle>> GetVehiclesAsync()
        {
            return await _context.Vehicles.OrderBy(x=>x.DateAdded).ToListAsync();
        }

       

    }
}
