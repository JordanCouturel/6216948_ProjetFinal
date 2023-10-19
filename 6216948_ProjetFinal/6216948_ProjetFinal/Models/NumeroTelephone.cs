using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace _6216948_ProjetFinal.Models
{
    [Table("NumeroTelephone", Schema = "SpecialisteSchema")]
    public partial class NumeroTelephone
    {
        [Key]
        [Column("NumeroID")]
        public int NumeroId { get; set; }
        [Column("SpecialisteID")]
        public int? SpecialisteId { get; set; }
        [StringLength(15)]
        [Unicode(false)]
        public string Numero { get; set; } = null!;

        [ForeignKey("SpecialisteId")]
        [InverseProperty("NumeroTelephones")]
        public virtual Specialiste? Specialiste { get; set; }
    }
}
