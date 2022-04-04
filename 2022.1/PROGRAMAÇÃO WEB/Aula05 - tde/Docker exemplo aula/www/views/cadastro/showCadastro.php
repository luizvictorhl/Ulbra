<h1>Dados do Cadastro</h1>

<table class="table table-striped">
    <tr>
        <th>
            Nome:
        </th>
        <td> 
            <?= $cadastro['nome']?>
        </td>
    </tr>

    <tr>
        <th>
            Senha digitada:
        </th>
        <td> 
            <?= $cadastro['senha']?>
        </td>
    </tr>

    <tr>
        <th>
            E-mail:
        </th>
        <td> 
            <?= $cadastro['email']?>
        </td>
    </tr>

    <tr>
        <th>
            Telefone:
        </th>
        <td> 
            <?= $cadastro['telefone']?>
        </td>
    </tr>

    <tr>
        <th>
            Aonde nos conheceu:
        </th>
        <td> 
            <?= $cadastro['conhecer']?>
        </td>
    </tr>

    <tr>
        <th>
            Tipo:
        </th>
        <td> 
            <?= $cadastro['voce']?>
        </td>
    </tr>

    <tr>
        <th>
            Interesse:
        </th>
        <td> 
            <?= $cadastro['inter']?>
        </td>
    </tr>

    <tr>
        <th>
            Motivo:
        </th>
        <td> 
            <?= $cadastro['motivo']?>
        </td>
    </tr>
</table>