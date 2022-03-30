using System;

namespace Aula02TesteAmbiente.Entities
{
    public class Livro
    {
        public int id;
        public string titulo;
        public decimal valor;
        DateTime dataPublicacao;

        public Livro(int id, string titulo)
        {
            this.id = id;
            this.titulo = titulo;
        }

        public int GetId()
        {
            return this.id;
        }
        public string GetTitulo()
        {
            return this.titulo;
        }
        public decimal GetValor()
        {
            if(this.valor==0)
                return 0;
            else
                return this.valor;
        }
        public void SetValor(decimal valor)
        {
            this.valor = valor;
        }

    }
}