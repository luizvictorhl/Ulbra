using System;
using System.Collections.Generic;
using System.Linq;
using Ap1Trabalho.Services;
using Ap1Trabalho.Domain;

namespace Ap1Trabalho.Controllers
{
  public class ControleClienteCobranca
  {
    ListaCliente myListClient = new ListaCliente();
    ListaCobranca myListCobranca = new ListaCobranca();

    public void criarCliente()
    {
      string id_C = "";
      if (myListClient.tamanhoLista().Equals(0))
      {
        id_C = (myListClient.tamanhoLista() + 1).ToString();
      }
      else
      {
        id_C = criarIdClient();
      }
      Console.WriteLine("Digite o nome do cliente: ");
      string nome_C = Console.ReadLine();
      Console.WriteLine("Digite o telefone do cliente: ");
      string numero_C = Console.ReadLine();
      Console.WriteLine("Digite o CPF do cliente: ");
      string cpf_C = Console.ReadLine();
      Console.WriteLine("Digite o endereço do cliente: ");
      string endereco_C = Console.ReadLine();

      myListClient.addCliente(new Cliente(id_C, nome_C, numero_C, cpf_C, endereco_C));

      Console.WriteLine("Cliente adicionado com sucesso!\n");

    }

    public string criarIdClient()
    {
      List<Cliente> clientes = myListClient.listarClientes();
      Cliente lastCliente = clientes.Last();
      string idLastCliente = lastCliente.Id;
      int idInt = int.Parse(idLastCliente);
      idInt = idInt + 1;

      string novoId = idInt.ToString();

      return novoId;
    }

    public void apresentarListClient()
    {
      List<Cliente> clientes = myListClient.listarClientes();
      if (clientes.Count == 0)
      {
        Console.WriteLine("A lista de clientes está vazia!");
      }
      else
      {
        foreach (var item in myListClient.listarClientes())
        {
          Console.WriteLine(item.getDescription());
        }
        Console.WriteLine("Numero de clientes cadastrados: " + myListClient.tamanhoLista());
      }
    }

    public void apresentarClientEdit()
    {
      if (myListClient.tamanhoLista().Equals(0))
      {
        Console.WriteLine("Lista vazia, para poder editar e necessario possuir clientes cadastrados!");
      }
      else
      {
        Console.WriteLine("Digite o numero do id do cliente a ser editado: ");
        apresentarListClient();
        string idClienteEditar = Console.ReadLine();

        foreach (Cliente item in myListClient.listarClientes())
        {
          if (item.Id.Equals(idClienteEditar))
          {
            Console.WriteLine("Digite o novo nome: ");
            string novoNome = Console.ReadLine();
            Console.WriteLine("Digite o novo telefone: ");
            string novoTelefone = Console.ReadLine();
            Console.WriteLine("Digite o novo CPF: ");
            string novoCpf = Console.ReadLine();
            Console.WriteLine("Digite o novo endereco: ");
            string novoEndereco = Console.ReadLine();

            string retorno = myListClient.editClient(idClienteEditar,
            novoNome, novoTelefone, novoCpf, novoEndereco);
            Console.WriteLine(retorno);
            return;
          }
        }
      }
    }

    public void apresentarRemoveClient()
    {
      if (myListClient.tamanhoLista().Equals(0))
      {
        Console.WriteLine("Lista vazia, para poder remover e necessario possuir clientes cadastrados");
      }
      else
      {
        Console.WriteLine("Digite o id do cliente a ser removido: ");
        apresentarListClient();
        string idClienteRemover = Console.ReadLine();

        List<Cobranca> cobrancas = myListCobranca.listarCobrancas();
        Cobranca cobranca = null;
        cobranca = cobrancas.Find(c => c.Cliente_.Id.Equals(idClienteRemover));

        if (cobranca == null)
        {
          string retorno = myListClient.removeCliente(idClienteRemover);
          Console.WriteLine(retorno);
        }
        else
        {
          Console.WriteLine("Cliente possui combranças em seu nome, impossível remover!");
        }
      }
    }

    public void criarCobranca()
    {
      if (myListClient.tamanhoLista().Equals(0))
      {
        Console.WriteLine("Lista vazia, para poder adicionar uma cobrança é necessário possuir clientes cadastrados.");
      }
      else
      {
        Console.WriteLine("Escolha o id do cliente que recebera essa cobrança: ");
        apresentarListClient();
        string idCliente = Console.ReadLine();
        List<Cliente> clientes = myListClient.listarClientes();
        Cliente clienteDevedor = null;
        clienteDevedor = clientes.Find(c => c.Id.Equals(idCliente));
        if (clienteDevedor == null)
        {
          Console.WriteLine("ERRO, cliente inexistente, verifique o id correto na lista de clientes");
        }
        else
        {
          string id_Cobranca = (myListCobranca.tamanhoLista() + 1).ToString();
          Console.WriteLine("Digite a data de emissão da cobrança ");
          string novaDataEmissao = Console.ReadLine();
          DateTime dataEmissao = Convert.ToDateTime(novaDataEmissao);
          Console.WriteLine("Digite a data de vencimento da cobrança ");
          string novaDataVencimento = Console.ReadLine();
          DateTime dataVencimento = Convert.ToDateTime(novaDataVencimento);
          Console.WriteLine("Digite o valor da cobrança ");
          string novoValor = Console.ReadLine();
          double valorCobrado = Convert.ToDouble(novoValor);

          myListCobranca.addCobranca(new Cobranca(id_Cobranca, dataEmissao, dataVencimento, valorCobrado, clienteDevedor));

          Console.WriteLine("Cobrança cadastrada com sucesso!\n");
        }
      }
    }

    public void escolherCobrancaPagar()
    {
      if (myListClient.tamanhoLista().Equals(0))
      {
        Console.WriteLine("Lista vazia, para poder efetuar um PAGAMENTO é necessário possuir CLIENTES e COBRANÇAS cadastrados.");
      }
      else
      {
        Console.WriteLine("Digite o ID da cobrança em que será realizado o pagamento: ");
        apresentarCobrancas();
        string idCobranca = Console.ReadLine();

        string retorno = myListCobranca.efetuarPagamento(idCobranca);
        Console.WriteLine(retorno);
      }
    }

    public void apresentarCobrancas()
    {
      List<Cobranca> cobrancas = myListCobranca.listarCobrancas();
      if (cobrancas.Count == 0)
      {
        Console.WriteLine("A lista de cobranças VAZIA!");
      }
      else
      {
        foreach (var item in myListCobranca.listarCobrancas())
        {
          Console.WriteLine(item.getDescription());
        }
      }
    }
  }
}