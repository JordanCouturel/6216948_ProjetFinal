using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace _6216948_ProjetFinal.Models
{
    [Table("EquipeSpecialiste", Schema = "SpecialisteSchema")]
    public partial class EquipeSpecialiste
    {
        [Key]
        [Column("EquipeSpecialisteID")]
        public int EquipeSpecialisteId { get; set; }
        [Column(TypeName = "date")]
        public DateTime? DateDebutEmploi { get; set; }
        [Column(TypeName = "date")]
        public DateTime? DateFinEmploi { get; set; }
        [Column("EquipeID")]
        public int? EquipeId { get; set; }
        [Column("SpecialisteID")]
        public int? SpecialisteId { get; set; }

        [ForeignKey("EquipeId")]
        [InverseProperty("EquipeSpecialistes")]
        public virtual Equipe? Equipe { get; set; }
        [ForeignKey("SpecialisteId")]
        [InverseProperty("EquipeSpecialistes")]
        public virtual Specialiste? Specialiste { get; set; }
    }
}
