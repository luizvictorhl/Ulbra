using System;
using Livraria.Domain;

namespace Livraria
{
    class Program
    {
    
        static void Main(string[] args)
        {
            Usuario luiz=new Usuario("Luiz Victor H. Likoski");
            Biblioteca library=new Biblioteca();
            Livro book1=new Livro("Livro n° 1", "Autor: Carlos", 235);
            Livro book2=new Livro("Livro n° 2", "Autor: Giovanni", 288);
            Livro book3=new Livro("Livro n° 3", "Autor: Ivana Moraes", 322);

            library.addBook(book1);
            library.addBook(book2);
            library.addBook(book3);
            library.rentBook(book3, luiz);
            library.showBooks();
            luiz.LivroDevol(library);
            
        }
    }
}