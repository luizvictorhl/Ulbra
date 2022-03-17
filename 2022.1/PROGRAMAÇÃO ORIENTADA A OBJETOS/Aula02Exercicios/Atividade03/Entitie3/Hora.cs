using System;

namespace Atividade03.Entitie3
{
    public class Hora
    {
        public int hora;
        public int minutos;
        public int segundos;

        public int GetHora()
        {
            return this.hora;
        }
        public void SetHora(int hora)
        {
            this.hora=hora;
        }
        public int GetMinutos()
        {
            return this.minutos;
        }
        public void SetMinutos(int minutos)
        {
            this.minutos = minutos;
        }
        public int GetSegundos()
        {
            return this.segundos;
        }
        public void SetSegundos(int segundos)
        {
            this.segundos = segundos;
        }
        public void validarHora()
        {
            if(this.hora > 24){
                Console.WriteLine("Um dia não possui mais de 24 horas");
            }else if(this.minutos > 59){
                Console.WriteLine("A quantidade de minutos que você digitou é inválida!");
            }else if(this.segundos > 59){
                Console.WriteLine("A quantidade de segundos que você digitou é inválida!");
            }else{
                Console.WriteLine($"Hora: {this.hora}:{this.minutos}:{this.segundos}");
            }
        }


    }
}