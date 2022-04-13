using System.Collections.Generic;
using Aula06___tde.Domain;

namespace Aula06___tde.Services
{
    public class ListaCliente
    {
        List<Cliente> listaDeCliente = new List<Cliente>();
        

        public void addCliente(Cliente cliente)
        {
            listaDeCliente.Add(cliente);
        }

        public int tamanhoLista()            
        {
            return listaDeCliente.Count;
        }
      

        public List<Cliente> listarClientes()
        {
            return listaDeCliente;    
        }
        
        
        public string editClient(string idCliente, string nomeEditado, string telefoneEditado, 
        string cpfEditado, string enderecoEditado)
        {
            Cliente clienteEditar = null;
            clienteEditar = listaDeCliente.Find(c => c.Id.Equals(idCliente));
            
            if(clienteEditar == null)
            {
                return "ERRO, cliente não existe!";
            }

            clienteEditar.Nome = nomeEditado;
            clienteEditar.Telefone = telefoneEditado;
            clienteEditar.Cpf = cpfEditado;
            clienteEditar.Endereco = enderecoEditado;

            return "Contato editado com sucesso!";
        }
       
        
        public string removeCliente(string idRemover)
        {
            int clienteRemovido = listaDeCliente.FindIndex(c => c.Id.Equals(idRemover));

            if (clienteRemovido.Equals(-1))
            {
                return "ERRO, cliente não existe";
            }

            listaDeCliente.RemoveAt(clienteRemovido);

            return "Cliente removido com sucesso!";
        }
    }
}