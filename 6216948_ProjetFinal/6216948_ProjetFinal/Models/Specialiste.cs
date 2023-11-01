using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace _6216948_ProjetFinal.Models
{
    [Table("Specialiste", Schema = "SpecialisteSchema")]
    [Index("Nom", "Prenom", Name = "UQ_Specialiste_NomPrenom", IsUnique = true)]
    public partial class Specialiste
    {
        public Specialiste()
        {
            EquipeSpecialistes = new HashSet<EquipeSpecialiste>();
            NumeroTelephones = new HashSet<NumeroTelephone>();
            Equipes = new HashSet<Equipe>();
        }

        [Key]
        [Column("SpecialisteID")]
        public int SpecialisteId { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string Nom { get; set; } = null!;
        [StringLength(50)]
        [Unicode(false)]
        public string Prenom { get; set; } = null!;
        public int? AdresseNumeroPorte { get; set; }
        [StringLength(100)]
        [Unicode(false)]
        public string? AdresseRue { get; set; }
        [StringLength(100)]
        [Unicode(false)]
        public string? AdresseVille { get; set; }
        [StringLength(10)]
        [Unicode(false)]
        public string? AdresseCodePostal { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? AdressePays { get; set; }
        [StringLength(100)]
        [Unicode(false)]
        public string? Specialite { get; set; }
        public string? AdresseNumeroPorteCryptee { get; set; }

        [InverseProperty("Specialiste")]
        public virtual ICollection<EquipeSpecialiste> EquipeSpecialistes { get; set; }
        [InverseProperty("Specialiste")]
        public virtual ICollection<NumeroTelephone> NumeroTelephones { get; set; }

        [ForeignKey("SpecialisteId")]
        [InverseProperty("Specialistes")]
        public virtual ICollection<Equipe> Equipes { get; set; }
    }
}
