using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CrudPersonNet6.Migrations
{
    public partial class AtualizandoBanco : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Cobranças_Cliente_ClienteId",
                table: "Cobranças");

            migrationBuilder.AlterColumn<int>(
                name: "ClienteId",
                table: "Cobranças",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Cobranças_Cliente_ClienteId",
                table: "Cobranças",
                column: "ClienteId",
                principalTable: "Cliente",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Cobranças_Cliente_ClienteId",
                table: "Cobranças");

            migrationBuilder.AlterColumn<int>(
                name: "ClienteId",
                table: "Cobranças",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AddForeignKey(
                name: "FK_Cobranças_Cliente_ClienteId",
                table: "Cobranças",
                column: "ClienteId",
                principalTable: "Cliente",
                principalColumn: "Id");
        }
    }
}
