using DBCore.Models;
using Microsoft.AspNetCore.Mvc;
using Repository.IRepository;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace FrankShop.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class WareHouseController : ControllerBase
    {
        private readonly IWareHouseRepository _repo;

        public WareHouseController(IWareHouseRepository repo)
        {
            _repo = repo;
        }


        [HttpGet("Vehicles")]
        public async Task<ActionResult<IReadOnlyList<Vehicle>>> GetVehicles()
        {
            return Ok(await _repo.GetVehiclesAsync());
        }


    }
}
