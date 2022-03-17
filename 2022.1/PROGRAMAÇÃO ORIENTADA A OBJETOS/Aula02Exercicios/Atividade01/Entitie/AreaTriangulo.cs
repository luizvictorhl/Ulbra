using System;

namespace Atividade01.Atividade_01
{
    public class AreaTriangulo
    {
         public double baseT;
        public double alturaT;
        public double areaT;


        
        public double GetBaseT()
        {
            return this.baseT;
        }
        public void SetBaseT(double baseT)
        {
            this.baseT = baseT;
        }

        //Altura do Triângulo:
        //public decimal AlturaT{get; set;}

        public double GetAlturaT()
        {
            return this.alturaT;
        }
        public void SetAlturaT(int alturaT)
        {
            this.alturaT = alturaT;
        }

        //Calcular área do triângulo:
        public double AreaT()
        {
            this.areaT = (this.baseT * this.alturaT)/2;
            return areaT;
        }
    
    }
}