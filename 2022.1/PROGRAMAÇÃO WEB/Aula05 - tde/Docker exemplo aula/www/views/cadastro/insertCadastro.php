<h1>Formulário para cadastro</h1>
<form class="form" action="?controller=cadastro&action=showCadastro" method="post">

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Nome</label>
        <input name="nome" class="form-control" type="text">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Email</label>
        <input name="email" class="form-control" type="email">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Senha</label>
        <input name="senha" class="form-control" type="password">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Telefone</label>
        <input name="telefone" class="form-control" type="tel">
    </div>

    <div>
        <label for="conhecer">Aonde nos conheceu?</label>
        <select name="conhecer" id="conhecer">
            <option value="Facebook">Facebook</option>
            <option value="Instagram">Instagram</option>
            <option value="Linkedin">Linkedin</option>
            <option value="Twitter">Twitter</option>
            <option value="Outdoor">Outdoor</option>
            <option value="Outro">Outro</option>
        </select>
    </div>

    <div class="mt-3">
        <label class="form-label" for="tipoPessoa">Você é:</label> <br>
        <input type="radio" id="Pessoa Fisica" name="voce" value="Pessoa Física">
        <label for="Pessoa Fisica">Pessoa Física</label><br>
        <input type="radio" id="Pessoa Jurídica" name="voce" value="Pessoa Jurídica">
        <label for="Pessoa Jurídica">Pessoa Jurídica</label><br>
    </div>
    <div class="my-3">
        <label class="form-label" for="">Qual interesse do seu cadastro?</label> <br>
        <input type="checkbox" id="serviços" name="inter" value="Serviços">
        <label for="serviços">Serviços</label><br>
        <input type="checkbox" id="orçamentos" name="inter" value="Orçamentos">
        <label for="orçamentos">Orçamentos</label><br>
        <input type="checkbox" id="outro" name="inter" value="Outro">
        <label for="outro">Outro</label>
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Uma breve descrição do seu problema / motivo de contato:</label>
        <textarea name="motivo" class="form-control" type="text"></textarea>
    </div>
    <div>
    <input class="btn btn-dark" type="submit" value="Enviar">
    
</form>

