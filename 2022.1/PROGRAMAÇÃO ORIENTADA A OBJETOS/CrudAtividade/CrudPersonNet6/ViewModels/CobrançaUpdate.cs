
using CrudPersonNet6.Domains;

namespace CrudPersonNet6.ViewModels
{
    public class CobrançaUpdate
    {

        public DateTime DataEmissao { get; set; }
        public DateTime DataVencimento { get; set; }
        public double Valor { get; set; }
        public int ClienteId { get; set; }
    }
}
