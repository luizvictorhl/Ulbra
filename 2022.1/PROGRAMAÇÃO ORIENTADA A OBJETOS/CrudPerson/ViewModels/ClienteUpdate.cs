namespace CrudPerson.ViewModels
{
  public class ClienteUpdate
  {
    public ClienteUpdate(string nome, string email, string fone, string cpf, string endereco)
    {
      this.Nome = nome;  
      this.Email = email;
      this.Fone = fone;
      this.Cpf = cpf;
      this.Endereco = endereco;
    }

    public ClienteUpdate()
    {

    }
    public int Id { get; set; }
    public string Nome { get; set; }
    public string Email { get; set; }
    public string Cpf { get; set; }
    public string Fone { get; set; }
    public string Endereco { get; set; }
  }
}