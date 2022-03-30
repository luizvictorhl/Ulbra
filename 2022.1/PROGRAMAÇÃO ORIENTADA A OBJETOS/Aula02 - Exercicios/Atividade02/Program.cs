using System;
using Atividade02.Entitie2;

namespace Atividade02
{
    class Program
    {
        static void Main(string[] args)
        {
            Data data = new Data();
            data.SetDia(12);
            data.SetMes(12);
            data.SetAno(2020);
            data.validarDia();

            Data data1 = new Data();
            data1.SetDia(34);
            data1.SetMes(12);
            data1.SetAno(2020);
            data1.validarDia();

            Data data2 = new Data();
            data2.SetDia(30);
            data2.SetMes(2);
            data2.SetAno(2020);
            data2.validarDia();

            Data data3 = new Data();
            data3.SetDia(12);
            data3.SetMes(14);
            data3.SetAno(2020);
            data3.validarDia();

            Data data4 = new Data();
            data4.SetDia(31);
            data4.SetMes(04);
            data4.SetAno(2020);
            data4.validarDia();
        }
    }
}
