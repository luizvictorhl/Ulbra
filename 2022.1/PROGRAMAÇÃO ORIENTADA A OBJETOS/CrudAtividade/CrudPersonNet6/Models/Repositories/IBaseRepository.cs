
namespace CrudPersonNet6.Repositories
{
  public interface IBaseRepository<Entity> where Entity : class
  {
    Entity GetById(int id);
    List<Entity> GetAll();
    void Save(Entity entity);
    void Delete(Entity entity);
    void Update(Entity entity);
  }
}