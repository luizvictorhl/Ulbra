using System;
using AgendTelefonica.Controllers;

namespace AgendTelefonica
{
    class Program
    {
        static void Main(string[] args)
        {
            ContatoController agenda = new ContatoController();
            agenda.Menu();
        }
    }
}
