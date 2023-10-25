using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.EntityFrameworkCore;

namespace _6216948_ProjetFinal.Models
{
    [Table("Joueur", Schema = "JoueurSchema")]
    public partial class Joueur
    {
        public Joueur()
        {
            Statistiques = new HashSet<Statistique>();
        }

        [Key]
        [Column("JoueurID")]
        public int JoueurId { get; set; }
        [StringLength(100)]
        [Unicode(false)]
        public string NomComplet { get; set; } = null!;
        public int? Age { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? Position { get; set; }
        [Column(TypeName = "date")]
        [ValidateNever]
        public DateTime? DateDeNaissance { get; set; }
        [Column("EquipeId")]
        [ValidateNever]
        public int? EquipeId { get; set; }

        [ForeignKey("EquipeId")]
        [InverseProperty("Joueurs")]
        public virtual Equipe? Equipe { get; set; }
        [InverseProperty("Joueur")]
        public virtual ICollection<Statistique> Statistiques { get; set; }
    }
}
