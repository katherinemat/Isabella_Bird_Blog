using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace IsabellaBirdBlog.Migrations
{
    public partial class Initial3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_PersonsExperience_Experiences_ExperienceId2",
                table: "PersonsExperience");

            migrationBuilder.DropForeignKey(
                name: "FK_PersonsExperience_Persons_PersonId2",
                table: "PersonsExperience");

            migrationBuilder.DropIndex(
                name: "IX_PersonsExperience_ExperienceId2",
                table: "PersonsExperience");

            migrationBuilder.DropIndex(
                name: "IX_PersonsExperience_PersonId2",
                table: "PersonsExperience");

            migrationBuilder.DropColumn(
                name: "ExperienceId2",
                table: "PersonsExperience");

            migrationBuilder.DropColumn(
                name: "PersonId2",
                table: "PersonsExperience");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ExperienceId2",
                table: "PersonsExperience",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "PersonId2",
                table: "PersonsExperience",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_PersonsExperience_ExperienceId2",
                table: "PersonsExperience",
                column: "ExperienceId2");

            migrationBuilder.CreateIndex(
                name: "IX_PersonsExperience_PersonId2",
                table: "PersonsExperience",
                column: "PersonId2");

            migrationBuilder.AddForeignKey(
                name: "FK_PersonsExperience_Experiences_ExperienceId2",
                table: "PersonsExperience",
                column: "ExperienceId2",
                principalTable: "Experiences",
                principalColumn: "ExperienceId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_PersonsExperience_Persons_PersonId2",
                table: "PersonsExperience",
                column: "PersonId2",
                principalTable: "Persons",
                principalColumn: "PersonId",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
