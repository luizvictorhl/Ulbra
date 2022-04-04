namespace Livraria.Domain
{
    public class Livro
    {
        private string titulo { get; set; }
        private string autor {get;set;}
        private int paginas {get; set;}

        public Livro(string titulo, string autor, int paginas )
        {
            this.titulo=titulo;
            this.autor=autor;
            this.paginas=paginas;
        }

        public string toString(){
            return "Titulo: "+this.titulo+"\n Autor: "+autor+"\n número de páginas: "+paginas;
        }

        public string getTitle(){
            return this.titulo;
        }
    
    }
}