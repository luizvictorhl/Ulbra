using System;
using System.Collections.Generic;
using Ap1Trabalho.Domain;

namespace Ap1Trabalho.Services
{
    public class ListaCobranca
    {
        List<Cobranca> listaDeCobranca = new List<Cobranca>();


        public int tamanhoLista()            
        {
            return listaDeCobranca.Count;
        }

        public List<Cobranca> listarCobrancas()
        {
            return listaDeCobranca;    
        }


        public void addCobranca(Cobranca cobranca)
        {
            listaDeCobranca.Add(cobranca);
        }


        public string efetuarPagamento(string idCobranca)
        {
            Cobranca cobranca = null;
            cobranca = listaDeCobranca.Find(c => c.Id.Equals(idCobranca));


            if(cobranca == null)
            {
                return "ERRO, cobrança não encontrada, verifique o id correto na lista de cobranças";
            }
            
            if (cobranca.PagamentoRealizado == true)
            {
                return "Está cobrança já está paga!";
            }

            DateTime dataAtual = DateTime.Today;

            if (dataAtual > cobranca.DataVencimento)
            {
                double valorReajustado = cobranca.Valor * 1.1;
                cobranca.Valor = valorReajustado;

                cobranca.DataPagamento = dataAtual.ToString("d");
                cobranca.PagamentoRealizado = true;

                return "Pagamento realizado com sucesso na data de " + cobranca.DataPagamento + ", com valor reajustado de R$ " + cobranca.Valor + ", por causa do vencimento.";
            }else
            {
                cobranca.DataPagamento = DateTime.Now.ToString("dd-MM-yyyy");
                cobranca.PagamentoRealizado = true;

                return "Pagamento realizado com sucesso na data de " + cobranca.DataPagamento + ", no valor de R$ " + cobranca.Valor;
            }
        }
    }
}