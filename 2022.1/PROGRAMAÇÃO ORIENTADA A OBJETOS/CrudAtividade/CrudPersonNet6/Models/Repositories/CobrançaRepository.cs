using CrudPersonNet6.Models.Domains;
using CrudPersonNet6.Models.Repositories;
using Microsoft.EntityFrameworkCore;

namespace CrudPersonNet6.Repositories
{
  public class CobrançaRepository : ICobrançaRepository
  {
    private DataContext context;
    public CobrançaRepository(DataContext context)
    {
      this.context = context;
    }
    public void Delete(Cobrança cobrança)
    {
      context.Cobranças.Remove(cobrança);
      context.SaveChanges();
    }

    public List<Cobrança> GetAll()
    {
      return context.Cobranças.Include(x => x.Cliente).ToList();
    }

    public Cobrança GetById(int id)
    {
      return context.Cobranças.Include(x => x.Cliente).SingleOrDefault(x => x.Id == id);
    }

    public void Save(Cobrança cobrança)
    {
      context.Cobranças.Add(cobrança);
      context.SaveChanges();
    }

    public void Update(Cobrança cobrança){
       
      context.Entry(cobrança).State = EntityState.Modified;
      context.SaveChanges();
    }
  }
}