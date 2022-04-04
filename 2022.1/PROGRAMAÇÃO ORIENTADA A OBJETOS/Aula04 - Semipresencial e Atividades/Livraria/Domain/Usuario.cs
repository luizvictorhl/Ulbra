using System;

namespace Livraria.Domain
{
    public class Usuario
    {
        private static int id;
        private string name;
        private Livro LivroAlugado;

        public Usuario(string name)
        {
            id++;
            this.name=name;
        }

        public void LivroM(Livro Livro){
            this.LivroAlugado=Livro;
        }

        public string getName(){
            return this.name;
        }

        public void LivroDevol(Biblioteca biblioteca){
            biblioteca.addBook(this.LivroAlugado);
            this.LivroAlugado=null;
            Console.WriteLine("O livro foi devolvido à biblioteca.");
        }
    }
}