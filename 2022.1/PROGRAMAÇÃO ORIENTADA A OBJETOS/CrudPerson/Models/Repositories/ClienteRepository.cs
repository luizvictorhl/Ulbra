using System.Collections.Generic;
using System.Linq;
using CrudPerson.Domains;
using CrudPerson.Models.Repositories;
using CrudPerson.Repositories;
using Microsoft.EntityFrameworkCore;

namespace CrudPerson.Repositories
{
  public class ClienteRepository : IClienteRepository
  {
    private DataContext context;
    public ClienteRepository(DataContext context)
    {
      this.context = context;
    }
    public void Delete(Cliente cliente)
    {
      context.Cliente.Remove(cliente);
      context.SaveChanges();
    }

    public List<Cliente> GetAll()
    {
      return context.Cliente.ToList();
    }

    public Cliente GetById(int id)
    {
      return context.Cliente.SingleOrDefault(x => x.Id == id);
    }

    public void Save(Cliente cliente)
    {
      context.Cliente.Add(cliente);
      context.SaveChanges();
    }

    public void Update(Cliente cliente)
    {
      context.Entry(cliente).State = EntityState.Modified;
      context.SaveChanges();
    }
  }
}