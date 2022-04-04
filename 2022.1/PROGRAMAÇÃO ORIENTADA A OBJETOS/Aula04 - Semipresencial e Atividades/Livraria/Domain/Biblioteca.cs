using System;
using System.Collections.Generic;

namespace Livraria.Domain
{
    public class Biblioteca
    {
        private List<Livro> biblioteca=new List<Livro>();

        public void addBook(Livro livro){
            biblioteca.Add(livro);
        }

        public void showBooks(){
            biblioteca.ForEach(livro=>Console.WriteLine(livro.toString()));
        }

        public Livro findBook(Livro livro){
           return biblioteca.Find(b=>b==livro);
        }

        public void rentBook(Livro livro, Usuario user){
            user.LivroM(findBook(livro));
            biblioteca.Remove(livro);
            Console.WriteLine("Livro alugado por: "+user.getName()+", Nome do livro: "+livro.getTitle());
        }
    }
}