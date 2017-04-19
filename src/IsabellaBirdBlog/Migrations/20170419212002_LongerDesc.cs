using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace IsabellaBirdBlog.Migrations
{
    public partial class LongerDesc : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "ExperienceDesc",
                table: "Experiences",
                type: "varchar(MAX)",
                nullable: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "ExperienceDesc",
                table: "Experiences",
                nullable: false);
        }
    }
}
