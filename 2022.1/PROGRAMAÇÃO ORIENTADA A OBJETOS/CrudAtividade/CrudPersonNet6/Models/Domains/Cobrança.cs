using CrudPersonNet6.Domains;

namespace CrudPersonNet6.Models.Domains
{
    public class Cobrança
    {
    
        public int Id { get; set; }
        public DateTime DataEmissao { get; set; }
        public DateTime DataVencimento { get; set; }
        public DateTime? DataPagamento { get; set; }
        public double Valor { get; set; }
        public Cliente Cliente {get; set;}
        public int ClienteId {get; set;}
    }
}