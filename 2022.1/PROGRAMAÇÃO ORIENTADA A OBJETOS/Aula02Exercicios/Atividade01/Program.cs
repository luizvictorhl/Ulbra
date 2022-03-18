using System;
using Atividade01.Entitie;

namespace Atividade01
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("CALCULO DE ÁREA DO TRIÂNGULO");
                
                AreaTriangulo objcalculo = new AreaTriangulo();
                objcalculo.SetBaseT(20);
                objcalculo.SetAlturaT(100);
                Console.WriteLine("Base do Triângulo " + objcalculo.GetBaseT());
                Console.WriteLine("Altura do Triângulo " + objcalculo.GetAlturaT());
                Console.WriteLine("Área do Triângulo " + objcalculo.AreaT());


        }
    }
}
