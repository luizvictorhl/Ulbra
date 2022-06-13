namespace projetoCrud.ViewModels
{
    public class AlunoUpdate
    {
        public AlunoUpdate(){}
        public AlunoUpdate(string nome, string telefone, string email)
        {
            this.Nome = nome;
            this.Telefone = telefone;
            this.Email = email;
        }
        public string Nome { get; set; }
        public string Telefone { get; set; }
        public string Email { get; set; }
    }
}