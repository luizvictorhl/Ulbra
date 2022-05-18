
using CrudPersonNet6.Domains;
using Microsoft.EntityFrameworkCore;

namespace CrudPersonNet6.Models.Repositories
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> opts)
            :base(opts)
        {}

        public DbSet<Cliente> Cliente { get; set; }
    }
}