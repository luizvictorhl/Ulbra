using CrudPersonNet6.Domains;
using CrudPersonNet6.Models.Repositories;
using CrudPersonNet6.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace CrudPersonNet6.Controllers
{
  [ApiController]
  [Route("v1")]
  public class ClienteController : ControllerBase
  {
    private readonly IClienteRepository clientes;

    public ClienteController(IClienteRepository clienteRepository)
    {
      this.clientes = clienteRepository;
    }

    [HttpGet]
    [Route("cliente")]
    public IActionResult GetList()
    {
      var listClientes = clientes.GetAll();
      if (listClientes.Count == 0) return NotFound();
      return Ok(listClientes);
    }

    [HttpGet]
    [Route("cliente/{id}")]
    public IActionResult Get(int id)
    {
      var cliente = clientes.GetById(id);
      if (cliente == null) return NotFound();
      return Ok(cliente);
    }

    [HttpPost]
    [Route("cliente")]
    public IActionResult Post([FromBody] Cliente model)
    {
      if (!ModelState.IsValid) return BadRequest();

      clientes.Save(model);
      return Ok(new
      {
        message = "Cliente foi adicionado com sucesso!"
      });
    }

    [HttpDelete]
    [Route("cliente/{id}")]
    public IActionResult Delete(int id)
    {
      var cliente = clientes.GetById(id);
      if (cliente == null) return NotFound();

      clientes.Delete(cliente);
      return Ok(new
      {
        message = "Cliente deletado com sucesso!"
      });
    }

    [HttpPut]
    [Route("cliente/{id}")]
    public IActionResult Put(int id, [FromBody] ClienteUpdate model)
    {
      var cliente = clientes.GetById(id);
      if (cliente == null) return NotFound();

      cliente.Email = model.Email;
      cliente.Fone = model.Fone;
      cliente.Nome = model.Nome;
      cliente.Cpf = model.Cpf;
      cliente.Endereco = model.Endereco;
      

      clientes.Update(cliente);
      return Ok(new
      {
        message = "Cliente atualizado com sucesso!",
        id = id
      });
    }
  }
}