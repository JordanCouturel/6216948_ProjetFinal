using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace _6216948_ProjetFinal.Models
{
    [Table("TypeStat", Schema = "JoueurSchema")]
    [Index("NomType", Name = "UQ_TypeStat_NomType", IsUnique = true)]
    public partial class TypeStat
    {
        public TypeStat()
        {
            Statistiques = new HashSet<Statistique>();
            StatistiquesNavigation = new HashSet<Statistique>();
        }

        [Key]
        [Column("TypeStatID")]
        public int TypeStatId { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string NomType { get; set; } = null!;

        [InverseProperty("TypeStat")]
        public virtual ICollection<Statistique> Statistiques { get; set; }

        [ForeignKey("TypeStatId")]
        [InverseProperty("TypeStats")]
        public virtual ICollection<Statistique> StatistiquesNavigation { get; set; }
    }
}
