using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace _6216948_ProjetFinal.Models
{
    [Keyless]
    public partial class VwStatistiquesEquipe
    {
        [Column("JoueurID")]
        public int JoueurId { get; set; }
        [StringLength(100)]
        [Unicode(false)]
        public string NomDuJoueur { get; set; } = null!;
        [Column("EquipeID")]
        public int? EquipeId { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? NomStatistique { get; set; }
        public int? ValeurStatistique { get; set; }
    }
}
