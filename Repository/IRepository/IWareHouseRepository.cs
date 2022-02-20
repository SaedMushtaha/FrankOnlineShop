using DBCore.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Repository.IRepository
{
  public interface IWareHouseRepository
    {   

        Task<IReadOnlyList<Vehicle>> GetVehiclesAsync();
        Task<Vehicle> GetVehicleByIdAsync(int id);
        
    }
}
