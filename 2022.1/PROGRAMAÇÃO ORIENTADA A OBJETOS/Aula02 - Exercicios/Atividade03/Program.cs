using System;
using Atividade03.Entitie3;

namespace Atividade03
{
    class Program
    {
        static void Main(string[] args)
        {
            Hora hora = new Hora();
            hora.SetHora(16);
            hora.SetMinutos(47);
            hora.SetSegundos(23);
            hora.validarHora();

            Hora hora1 = new Hora();
            hora1.SetHora(25);
            hora1.SetMinutos(47);
            hora1.SetSegundos(23);
            hora1.validarHora();

            Hora hora2 = new Hora();
            hora2.SetHora(24);
            hora2.SetMinutos(61);
            hora2.SetSegundos(23);
            hora2.validarHora();
        }
    }
}
