using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace _6216948_ProjetFinal.Models
{
    [Table("Equipe", Schema = "SpecialisteSchema")]
    [Index("Nom", Name = "UQ_Equipe_Nom", IsUnique = true)]
    public partial class Equipe
    {
        public Equipe()
        {
            EquipeSpecialistes = new HashSet<EquipeSpecialiste>();
            Joueurs = new HashSet<Joueur>();
            Specialistes = new HashSet<Specialiste>();
        }

        [Key]
        [Column("EquipeID")]
        public int EquipeId { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string Nom { get; set; } = null!;
        [StringLength(50)]
        [Unicode(false)]
        public string? Ville { get; set; }

        [InverseProperty("Equipe")]
        public virtual ICollection<EquipeSpecialiste> EquipeSpecialistes { get; set; }
        [InverseProperty("Equipe")]
        public virtual ICollection<Joueur> Joueurs { get; set; }

        [ForeignKey("EquipeId")]
        [InverseProperty("Equipes")]
        public virtual ICollection<Specialiste> Specialistes { get; set; }
    }
}
