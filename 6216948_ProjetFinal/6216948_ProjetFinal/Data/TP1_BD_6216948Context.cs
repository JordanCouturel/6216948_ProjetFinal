using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using _6216948_ProjetFinal.Models;

namespace _6216948_ProjetFinal.Data
{
    public partial class TP1_BD_6216948Context : DbContext
    {
        public TP1_BD_6216948Context()
        {
        }

        public TP1_BD_6216948Context(DbContextOptions<TP1_BD_6216948Context> options)
            : base(options)
        {
        }

        public virtual DbSet<Equipe> Equipes { get; set; } = null!;
        public virtual DbSet<EquipeSpecialiste> EquipeSpecialistes { get; set; } = null!;
        public virtual DbSet<Joueur> Joueurs { get; set; } = null!;
        public virtual DbSet<NumeroTelephone> NumeroTelephones { get; set; } = null!;
        public virtual DbSet<Specialiste> Specialistes { get; set; } = null!;
        public virtual DbSet<Statistique> Statistiques { get; set; } = null!;
        public virtual DbSet<TypeStat> TypeStats { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Name=TP1_BD_6216948");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Equipe>(entity =>
            {
                entity.Property(e => e.EquipeId).ValueGeneratedNever();
            });

            modelBuilder.Entity<EquipeSpecialiste>(entity =>
            {
                entity.Property(e => e.EquipeSpecialisteId).ValueGeneratedNever();

                entity.Property(e => e.DateDebutEmploi).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.Equipe)
                    .WithMany(p => p.EquipeSpecialistes)
                    .HasForeignKey(d => d.EquipeId)
                    .HasConstraintName("FK__EquipeSpe__Equip__3F466844");

                entity.HasOne(d => d.Specialiste)
                    .WithMany(p => p.EquipeSpecialistes)
                    .HasForeignKey(d => d.SpecialisteId)
                    .HasConstraintName("FK__EquipeSpe__Speci__403A8C7D");
            });

            modelBuilder.Entity<Joueur>(entity =>
            {
                entity.Property(e => e.JoueurId).ValueGeneratedNever();

                entity.HasOne(d => d.Equipe)
                    .WithMany(p => p.Joueurs)
                    .HasForeignKey(d => d.EquipeId)
                    .HasConstraintName("FK__Joueur__EquipeID__440B1D61");
            });

            modelBuilder.Entity<NumeroTelephone>(entity =>
            {
                entity.HasKey(e => e.NumeroId)
                    .HasName("PK__NumeroTe__C664E5EE666963FB");

                entity.Property(e => e.NumeroId).ValueGeneratedNever();

                entity.HasOne(d => d.Specialiste)
                    .WithMany(p => p.NumeroTelephones)
                    .HasForeignKey(d => d.SpecialisteId)
                    .HasConstraintName("FK__NumeroTel__Speci__398D8EEE");
            });

            modelBuilder.Entity<Specialiste>(entity =>
            {
                entity.Property(e => e.SpecialisteId).ValueGeneratedNever();

                entity.HasMany(d => d.Equipes)
                    .WithMany(p => p.Specialistes)
                    .UsingEntity<Dictionary<string, object>>(
                        "SpecialisteEquipe",
                        l => l.HasOne<Equipe>().WithMany().HasForeignKey("EquipeId").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK__Specialis__Equip__52593CB8"),
                        r => r.HasOne<Specialiste>().WithMany().HasForeignKey("SpecialisteId").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK__Specialis__Speci__5165187F"),
                        j =>
                        {
                            j.HasKey("SpecialisteId", "EquipeId").HasName("PK__Speciali__769F390DD2540A29");

                            j.ToTable("SpecialisteEquipe", "SpecialisteSchema");

                            j.IndexerProperty<int>("SpecialisteId").HasColumnName("SpecialisteID");

                            j.IndexerProperty<int>("EquipeId").HasColumnName("EquipeID");
                        });
            });

            modelBuilder.Entity<Statistique>(entity =>
            {
                entity.Property(e => e.StatistiqueId).ValueGeneratedNever();

                entity.HasOne(d => d.Joueur)
                    .WithMany(p => p.Statistiques)
                    .HasForeignKey(d => d.JoueurId)
                    .HasConstraintName("FK__Statistiq__Joueu__49C3F6B7");

                entity.HasOne(d => d.TypeStat)
                    .WithMany(p => p.Statistiques)
                    .HasForeignKey(d => d.TypeStatId)
                    .HasConstraintName("FK__Statistiq__TypeS__4AB81AF0");

                entity.HasMany(d => d.TypeStats)
                    .WithMany(p => p.StatistiquesNavigation)
                    .UsingEntity<Dictionary<string, object>>(
                        "StatistiqueTypeStat",
                        l => l.HasOne<TypeStat>().WithMany().HasForeignKey("TypeStatId").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK__Statistiq__TypeS__4E88ABD4"),
                        r => r.HasOne<Statistique>().WithMany().HasForeignKey("StatistiqueId").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK__Statistiq__Stati__4D94879B"),
                        j =>
                        {
                            j.HasKey("StatistiqueId", "TypeStatId").HasName("PK__Statisti__7329ED96DF083AC1");

                            j.ToTable("StatistiqueTypeStat", "JoueurSchema");

                            j.IndexerProperty<int>("StatistiqueId").HasColumnName("StatistiqueID");

                            j.IndexerProperty<int>("TypeStatId").HasColumnName("TypeStatID");
                        });
            });

            modelBuilder.Entity<TypeStat>(entity =>
            {
                entity.Property(e => e.TypeStatId).ValueGeneratedNever();
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
