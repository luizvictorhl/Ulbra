using System;
using System.Collections.Generic;
using Aula04Atividades.Entitie;

/*Identifique os atributos de  uma agenda	telefônica, modele as classes, atributos e métodos necessários para a futura implementação.
    public class Agenda*/

namespace Aula04Atividades
{
    
    class Program
    {
        static Pedido pedidoDoJoao;

        static void Main(string[] args)
        {
            Produto produto = new Produto(100,"açucar", 5.90, 15);
            Produto produto1 = new Produto(10,"arroz", 7.99, 100);
            Produto produto2 = new Produto(1,"feijao", 7.99, 50);

            Cliente cliente = new Cliente(10, "João");

            FormaPagamento fDinheiro = new FormaPagamento(02, "dinheiro");
            FormaPagamento fCartao = new FormaPagamento(01, "cartao");

            //criando um pedido

            pedidoDoJoao = new Pedido(1, 
                new DateTime(2022,03,01),
                cliente,
                new List<Produto>(){
                    produto,
                    produto1
                });
            pedidoDoJoao.Produtos.Add(produto2);
            pedidoDoJoao.FormasPagamentos.Add(fDinheiro);
            pedidoDoJoao.FormasPagamentos.Add(fCartao);

            //Imprimir Pedido

            ImprimirPedido();
            
        }
        private static void ImprimirPedido()
        {
            Console.WriteLine("Pedido do: " + pedidoDoJoao.Cliente.Nome);
            Console.WriteLine("Data: " + pedidoDoJoao.Data.ToString("dd/MM/yyyy"));
            Console.WriteLine("--------------------------");
            foreach (var item in pedidoDoJoao.Produtos)
            {
                Console.WriteLine(item.Nome);
            
            }
            Console.WriteLine("--------------------------");
            foreach (var item in pedidoDoJoao.FormasPagamentos)
            {
                Console.WriteLine(item.Nome);
            
            }

        }
    }
}
