
using _6216948_ProjetFinal.Data;
using _6216948_ProjetFinal.Models;
using _6216948_ProjetFinal.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace _6216948_ProjetFinal.Controllers
{
    public class HomeController : Controller
    {

        public TP1_BD_6216948Context _BD_6216948Context { get; set; }

        public HomeController(TP1_BD_6216948Context dbcontext)
        {
         
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


        public async Task<IActionResult> GetEquipes()
        {
            return View(await _BD_6216948Context.Equipes.ToListAsync());
        }



        public async Task<IActionResult> EquipeDetails(int id)
        {

          

            Equipe? equipe = await _BD_6216948Context.Equipes.FindAsync(id);

            string query = "execute USP_GetTeamDetails @EquipeID";

            List<SqlParameter> parameters = new List<SqlParameter>
            {
                new SqlParameter{ParameterName="@EquipeID", Value=equipe.EquipeId },
            };

            EquipeDetailsVM equipeDetailsVM = new EquipeDetailsVM
            {
                Equipe = equipe,
                JoueursList = await _BD_6216948Context.Joueurs.FromSqlRaw(query, parameters.ToArray()).ToListAsync(),
            };
        
        
           
          


            return View(equipeDetailsVM);

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