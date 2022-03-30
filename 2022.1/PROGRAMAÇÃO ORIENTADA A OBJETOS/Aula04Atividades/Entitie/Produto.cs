using System;

namespace Aula04Atividades.Entitie
{
    
    public class Produto
    {
        public Produto(int id, string nome, double preco, double qtdEstoque)
        {
            Id = id;
            Nome = nome;
            Preco = preco;
            QtdEstoque = qtdEstoque;
        }

        public int Id { get; private set; }
        public string Nome { get; set; }
        public double  Preco { get; set; }
        public double QtdEstoque { get; set; }

    }
}