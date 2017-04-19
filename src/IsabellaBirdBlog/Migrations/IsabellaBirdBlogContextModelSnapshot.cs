﻿using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using IsabellaBirdBlog.Models;

namespace IsabellaBirdBlog.Migrations
{
    [DbContext(typeof(IsabellaBirdBlogContext))]
    partial class IsabellaBirdBlogContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasAnnotation("ProductVersion", "1.0.0-rtm-21431")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("IsabellaBirdBlog.Models.Experience", b =>
                {
                    b.Property<int>("ExperienceId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ExperienceDesc");

                    b.Property<string>("ExperienceName");

                    b.Property<int?>("LocationId");

                    b.HasKey("ExperienceId");

                    b.HasIndex("LocationId");

                    b.ToTable("Experiences");
                });

            modelBuilder.Entity("IsabellaBirdBlog.Models.Location", b =>
                {
                    b.Property<int>("LocationId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("GeoClass");

                    b.Property<string>("LocationName");

                    b.HasKey("LocationId");

                    b.ToTable("Locations");
                });

            modelBuilder.Entity("IsabellaBirdBlog.Models.Person", b =>
                {
                    b.Property<int>("PersonId")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("LocationId");

                    b.Property<string>("PersonName");

                    b.HasKey("PersonId");

                    b.HasIndex("LocationId");

                    b.ToTable("Persons");
                });

            modelBuilder.Entity("IsabellaBirdBlog.Models.PersonExperience", b =>
                {
                    b.Property<int>("PersonId");

                    b.Property<int>("ExperienceId");

                    b.Property<int?>("ExperienceId2");

                    b.Property<int?>("PersonId2");

                    b.HasKey("PersonId", "ExperienceId");

                    b.HasIndex("ExperienceId");

                    b.HasIndex("ExperienceId2");

                    b.HasIndex("PersonId");

                    b.HasIndex("PersonId2");

                    b.ToTable("PersonExperience");
                });

            modelBuilder.Entity("IsabellaBirdBlog.Models.Experience", b =>
                {
                    b.HasOne("IsabellaBirdBlog.Models.Location", "Location")
                        .WithMany("Experiences")
                        .HasForeignKey("LocationId");
                });

            modelBuilder.Entity("IsabellaBirdBlog.Models.Person", b =>
                {
                    b.HasOne("IsabellaBirdBlog.Models.Location", "Location")
                        .WithMany("Persons")
                        .HasForeignKey("LocationId");
                });

            modelBuilder.Entity("IsabellaBirdBlog.Models.PersonExperience", b =>
                {
                    b.HasOne("IsabellaBirdBlog.Models.Experience", "Experience")
                        .WithMany("PersonExperience")
                        .HasForeignKey("ExperienceId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("IsabellaBirdBlog.Models.Experience")
                        .WithMany("PersonsExperiences")
                        .HasForeignKey("ExperienceId2");

                    b.HasOne("IsabellaBirdBlog.Models.Person", "Person")
                        .WithMany("PersonExperience")
                        .HasForeignKey("PersonId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("IsabellaBirdBlog.Models.Person")
                        .WithMany("PersonsExperiences")
                        .HasForeignKey("PersonId2");
                });
        }
    }
}