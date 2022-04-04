using System.Text;
using AgendTelefonica.Data;
using AgendTelefonica.Domain;

namespace AgendTelefonica.Services
{
    public class ContatoService
    {
        ContatoRepository minhaAgenda = new ContatoRepository();

        public int RetornaProximoId()
        {
            return minhaAgenda.GetAll().Count +1;
        }
        public string CriarContato(string nome, string telefone)
        {
            minhaAgenda.Save(new Contato(RetornaProximoId(), nome, telefone));

            return "Contato adicionado com sucesso!";
        }

        public string ListarContatos()
        {
            var builder = new StringBuilder();
            var contatos = minhaAgenda.GetAll();
            var qtdContatos = contatos.Count;

            if(qtdContatos == 0)
            {
                builder.AppendLine("Lista vazia!");
            }
            else
            {
                foreach (Contato contato in contatos)
                {
                builder.AppendLine($"nome: {contato.Nome}   Id:{contato.Id}");
                }   
            }
            return builder.ToString();

        }
    }
}