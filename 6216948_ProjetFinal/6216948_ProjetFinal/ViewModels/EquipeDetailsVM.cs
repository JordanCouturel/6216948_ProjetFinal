using _6216948_ProjetFinal.Models;

namespace _6216948_ProjetFinal.ViewModels
{
    public class EquipeDetailsVM
    {
       public Equipe Equipe { get; set; }

       public IEnumerable<Joueur> JoueursList { get; set; }
    
    }
}
