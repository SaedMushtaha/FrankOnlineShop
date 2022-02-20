using DBCore.Data;
using DBCore.Models;
using Microsoft.EntityFrameworkCore;
using Repository.DTOs;
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

        public async Task<Vehicle> GetVehicleByIdAsync(int id)
        {
            var GetVehicleDetails = (from vehicle in _context.Vehicles
                              join warehouse in _context.Warehouses on vehicle.WarehousesId equals warehouse.Id
                              join location in _context.Locations on warehouse.LocationId equals location.Id
                              where vehicle.Id == id
                                     select new VehicleDTO
                              {
                                         Lat = location.Lat,
                                         Long = location.Long,
                                         LocationName = location.Name,
                                         WareHouseName = warehouse.Name,
                                         Id = vehicle.Id,
                                         Make = vehicle.Make,
                                         Model = vehicle.Model,
                                         YearModel = vehicle.YearModel,
                                         Price = vehicle.Price,
                                         Licensed = vehicle.Licensed,
                                         DateAdded = vehicle.DateAdded
                                     }).OrderBy(x => x.DateAdded).FirstOrDefaultAsync();
            return await GetVehicleDetails;


        }
        

    }
}
