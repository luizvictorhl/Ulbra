using Aula11.Models.Domains;
using Microsoft.EntityFrameworkCore;

namespace Aula11.Models.Repositories
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> opts)
            :base(opts)
        {}

        public DbSet<Person> People { get; set; }
    }
}