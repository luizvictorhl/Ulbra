using System;
using Aula02TesteAmbiente.Entities;

namespace Aula02TesteAmbiente
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            Livro objLivro = new Livro(100, "BDD");
            Console.WriteLine(objLivro.GetId() + " - " + objLivro.GetTitulo() + " - " + objLivro.GetValor());

            objLivro.SetValor(199);
            Console.WriteLine("Valor do livro:" + objLivro.GetValor());
        }
    }
}
