using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace IsabellaBirdBlog.Models
{
    public class IsabellaBirdBlogContext : DbContext
    {
        public IsabellaBirdBlogContext()
        {
        }

        public DbSet<Location> Locations { get; set; }
        public DbSet<Experience> Experiences { get; set; }
        public DbSet<Person> Persons { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=IsabellaBirdBlog;integrated security=True");
        }

        public IsabellaBirdBlogContext(DbContextOptions<IsabellaBirdBlogContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            modelBuilder.Entity<PersonsExperiences>()
           .HasKey(t => new { t.PersonId, t.ExperienceId });

            modelBuilder.Entity<PersonsExperiences>()
                .HasOne(pt => pt.Person)
                .WithMany(p => p.PersonsExperiencess)
                .HasForeignKey(pt => pt.PersonId);

            modelBuilder.Entity<PersonsExperiences>()
                .HasOne(pt => pt.Experience)
                .WithMany(t => t.PersonsExperiencess)
                .HasForeignKey(pt => pt.ExperienceId);

            base.OnModelCreating(builder);
        }
    }
}
