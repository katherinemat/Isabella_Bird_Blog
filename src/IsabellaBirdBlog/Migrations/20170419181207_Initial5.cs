using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace IsabellaBirdBlog.Migrations
{
    public partial class Initial5 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "LocationName",
                table: "Locations",
                nullable: false);

            migrationBuilder.AlterColumn<string>(
                name: "GeoClass",
                table: "Locations",
                nullable: false);

            migrationBuilder.AlterColumn<string>(
                name: "ExperienceName",
                table: "Experiences",
                nullable: false);

            migrationBuilder.AlterColumn<string>(
                name: "ExperienceDesc",
                table: "Experiences",
                nullable: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "LocationName",
                table: "Locations",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "GeoClass",
                table: "Locations",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "ExperienceName",
                table: "Experiences",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "ExperienceDesc",
                table: "Experiences",
                nullable: true);
        }
    }
}
