
using _6216948_ProjetFinal.Data;
using _6216948_ProjetFinal.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace _6216948_ProjetFinal.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        public TP1_BD_6216948Context _BD_6216948Context { get; set; }

        public HomeController(ILogger<HomeController> logger, TP1_BD_6216948Context dbcontext)
        {
            _logger = logger;
            _BD_6216948Context = dbcontext;
        }

        public IActionResult Index()
        {
            return View();
        }



        public async Task<IActionResult> Vue()
        {
            return View(await _BD_6216948Context.VwStatistiquesEquipes.ToListAsync());
        }



        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}