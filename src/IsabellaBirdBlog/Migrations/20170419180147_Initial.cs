using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Metadata;

namespace IsabellaBirdBlog.Migrations
{
    public partial class Initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Locations",
                columns: table => new
                {
                    LocationId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    GeoClass = table.Column<string>(nullable: true),
                    LocationName = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Locations", x => x.LocationId);
                });

            migrationBuilder.CreateTable(
                name: "Experiences",
                columns: table => new
                {
                    ExperienceId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    ExperienceDesc = table.Column<string>(nullable: true),
                    ExperienceName = table.Column<string>(nullable: true),
                    LocationId = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Experiences", x => x.ExperienceId);
                    table.ForeignKey(
                        name: "FK_Experiences_Locations_LocationId",
                        column: x => x.LocationId,
                        principalTable: "Locations",
                        principalColumn: "LocationId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Persons",
                columns: table => new
                {
                    PersonId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    LocationId = table.Column<int>(nullable: true),
                    PersonName = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Persons", x => x.PersonId);
                    table.ForeignKey(
                        name: "FK_Persons_Locations_LocationId",
                        column: x => x.LocationId,
                        principalTable: "Locations",
                        principalColumn: "LocationId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "PersonsExperience",
                columns: table => new
                {
                    PersonId = table.Column<int>(nullable: false),
                    ExperienceId = table.Column<int>(nullable: false),
                    ExperienceId2 = table.Column<int>(nullable: true),
                    PersonId2 = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PersonsExperience", x => new { x.PersonId, x.ExperienceId });
                    table.ForeignKey(
                        name: "FK_PersonsExperience_Experiences_ExperienceId",
                        column: x => x.ExperienceId,
                        principalTable: "Experiences",
                        principalColumn: "ExperienceId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_PersonsExperience_Experiences_ExperienceId2",
                        column: x => x.ExperienceId2,
                        principalTable: "Experiences",
                        principalColumn: "ExperienceId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_PersonsExperience_Persons_PersonId",
                        column: x => x.PersonId,
                        principalTable: "Persons",
                        principalColumn: "PersonId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_PersonsExperience_Persons_PersonId2",
                        column: x => x.PersonId2,
                        principalTable: "Persons",
                        principalColumn: "PersonId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Experiences_LocationId",
                table: "Experiences",
                column: "LocationId");

            migrationBuilder.CreateIndex(
                name: "IX_Persons_LocationId",
                table: "Persons",
                column: "LocationId");

            migrationBuilder.CreateIndex(
                name: "IX_PersonsExperience_ExperienceId",
                table: "PersonsExperience",
                column: "ExperienceId");

            migrationBuilder.CreateIndex(
                name: "IX_PersonsExperience_ExperienceId2",
                table: "PersonsExperience",
                column: "ExperienceId2");

            migrationBuilder.CreateIndex(
                name: "IX_PersonsExperience_PersonId",
                table: "PersonsExperience",
                column: "PersonId");

            migrationBuilder.CreateIndex(
                name: "IX_PersonsExperience_PersonId2",
                table: "PersonsExperience",
                column: "PersonId2");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "PersonsExperience");

            migrationBuilder.DropTable(
                name: "Experiences");

            migrationBuilder.DropTable(
                name: "Persons");

            migrationBuilder.DropTable(
                name: "Locations");
        }
    }
}
