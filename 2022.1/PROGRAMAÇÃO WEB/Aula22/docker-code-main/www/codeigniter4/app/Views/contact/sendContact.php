<h1>Envie seu Contato</h1>
<form class="form" action="<?=base_url('/contactAction')?>" method="post" enctype='multipart/form-data'>

    <div class ="mb-3 mt-3">
        <label class="form-label">Seu nome:</label>
        <input name="name" class="form-control" type="text">
    </div>
    <div class ="mb-3 mt-3">
        <label class="form-label">Seu email:</label>
        <input name="email" class="form-control" type="email">
    </div>
    <div class ="mb-3 mt-3">
        <label class="form-label">Messagem:</label>
        <textarea name="message" class="form-control" rows="5"></textarea>
    </div>
    <input class="btn btn-primary" type="submit" value="Enviar">

</form>