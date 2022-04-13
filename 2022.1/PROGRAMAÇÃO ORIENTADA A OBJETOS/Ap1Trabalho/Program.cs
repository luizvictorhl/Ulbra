using System;
using Ap1Trabalho.Controllers;

namespace Ap1Trabalho
{
    class Program
    {
        static void Main(string[] args)
        {
            ControleClienteCobranca controle = new ControleClienteCobranca();

            string  operador ;

            do{
                Console.WriteLine("Digite 1 para adicionar um cliente: \n");
                Console.WriteLine("Digite 2 para listar os clientes: \n" );
                Console.WriteLine("Digite 3 para editar um cliente: \n");
                Console.WriteLine("Digite 4 para excluir um cliente: \n");
                Console.WriteLine("Digite 5 para adicionar uma cobrança: \n");
                Console.WriteLine("Digite 6 para listar as cobranças: \n");
                Console.WriteLine("Digite 7 para efetuar o pagamento de uma cobrança: \n");
                Console.WriteLine("Digite 0 para encerrar: \n");

                string  resposta  =  Console.ReadLine ();

                operador = resposta;

                while(operador != "1" && operador != "2" && operador != "3" && operador != "4" && operador != "5" && operador != "6" && operador != "7" && operador != "0")
                {   
                    Console.WriteLine("Operação invalida, digite novamente!");
                    resposta = Console.ReadLine();
                    operador = resposta;
                }
                switch (operador)
                {
                    case "1" :
                        controle.criarCliente();
                        break;
                    case "2" :
                        controle.apresentarListClient();
                        break;
                    case "3" :
                        controle.apresentarClientEdit();
                        break;
                    case "4" :
                        controle.apresentarRemoveClient();
                    break;
                    case "5" :
                        controle.criarCobranca();
                    break;
                    case "6" :
                        controle.apresentarCobrancas();
                    break;
                    case "7" :
                        controle.escolherCobrancaPagar();
                    break;
                }

            }while(operador != "0");
            
            Console.WriteLine("Programa encerrado!");
        }
    }
}
