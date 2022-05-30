using CrudPersonNet6.Models.Domains;
using CrudPersonNet6.Models.Repositories;
using CrudPersonNet6.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace CrudPersonNet6.Controllers
{
  [ApiController]
  [Route("v1")]
  public class CobrançaController : ControllerBase
  {
    private readonly ICobrançaRepository cobranças;

    public CobrançaController(ICobrançaRepository cobrançaRepository)
    {
      this.cobranças = cobrançaRepository;
    }

    [HttpGet]
    [Route("cobrança")]
    public IActionResult GetList()
    {
      var listCobranças = cobranças.GetAll();
      if (listCobranças.Count == 0) return NotFound();
      return Ok(listCobranças);
    }

    [HttpGet]
    [Route("cobrança/{id}")]
    public IActionResult Get(int id)
    {
      var cobrança = cobranças.GetById(id);
      if (cobrança == null) return NotFound();
      return Ok(cobrança);
    }

    [HttpPost]
    [Route("cobrança")]
    public IActionResult Post([FromBody] CobrançaUpdate model)
    {
      if (!ModelState.IsValid) return BadRequest();

      var newCobranca = new Cobrança
      {
        DataEmissao = model.DataEmissao,
        DataVencimento = model.DataVencimento,
        Valor = model.Valor,
        ClienteId = model.ClienteId
      };

        cobranças.Save(newCobranca);
        return Ok(new
        {
          message = "Cobrança criada com Sucesso!",
        });
    }

    [HttpDelete]
    [Route("cobrança/{id}")]
    public IActionResult Delete(int id)
    {
      var cobrança = cobranças.GetById(id);
      if (cobrança == null) return NotFound();

      cobranças.Delete(cobrança);
      return Ok(new
      {
        message = "Cobrança deletada com sucesso!"
      });
    }

    [HttpPut]
    [Route("cobrança/{id}")]
    public IActionResult Put([FromRoute]int id, [FromBody] UpdateCobrança model)
    {
      var cobrança = cobranças.GetById(id);
      if (cobrança == null) return NotFound();

      cobrança.DataVencimento = model.DataVencimento;
      

      cobranças.Update(cobrança);
      return Ok(new
      {
        message = "Cobrança atualizada com sucesso!",
        id = id
      });
    }

    
    [HttpPatch("{id}")] 
    public IActionResult Patch([FromRoute]int id, [FromBody] UpdateCobrança update)
    {
      var cobranca = cobranças.GetById(id);
      if (cobranca == null) return NotFound();

      cobranca.DataPagamento = DateTime.Now;

      cobranças.Update(cobranca);
      return Ok(cobranca);
      
    }

  }
}
