using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace _6216948_ProjetFinal.Models
{
    [Table("Statistique", Schema = "JoueurSchema")]
    public partial class Statistique
    {
        public Statistique()
        {
            TypeStats = new HashSet<TypeStat>();
        }

        [Key]
        [Column("StatistiqueID")]
        public int StatistiqueId { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? Nom { get; set; }
        public int? Valeur { get; set; }
        [Column("JoueurID")]
        public int? JoueurId { get; set; }
        [Column("TypeStatID")]
        public int? TypeStatId { get; set; }

        [ForeignKey("JoueurId")]
        [InverseProperty("Statistiques")]
        public virtual Joueur? Joueur { get; set; }
        [ForeignKey("TypeStatId")]
        [InverseProperty("Statistiques")]
        public virtual TypeStat? TypeStat { get; set; }

        [ForeignKey("StatistiqueId")]
        [InverseProperty("StatistiquesNavigation")]
        public virtual ICollection<TypeStat> TypeStats { get; set; }
    }
}
