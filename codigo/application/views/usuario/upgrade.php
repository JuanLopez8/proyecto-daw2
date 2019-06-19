
<h1>MEJORAR MI CUENTA</h1>
<p>¿Quieres convertirte en usuario premium?</p>
<form action="<?=base_url()?>usuario/upgradePost" method="POST">
<input type="hidden" name="id" value="<?=$usuario->id?>"/>
<br>
<div class="contenedorPago">

<div class="pagoCabecera">Detalles del pago: <div style="float:right"><img src="<?=base_url()?>assets/img/premium/visa.png" height="30px;"/><img src="<?=base_url()?>assets/img/premium/paypal.png" height="30px;"/><img src="<?=base_url()?>assets/img/premium/mastercard.png" height="30px;"/></div></div><br>

Número de Tarjeta:
<div class="input-group col-sm-3">
    <span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>
    <input id="tarjeta" type="text" class="form-control" name="tarjeta" placeholder="Nº Tarjeta">
</div><br>
Fecha de Caducidad:
<br>
<input id="mes" type="text"  name="mes" placeholder="Mes" style="border-radius:3px;"> / <input id="anio" type="text"  name="anio" placeholder="Año" style="border-radius:5px;">
<br><br>
Código de Seguridad:  <br>
<div class="input-group col-sm-3">
    <input id="codigo" type="text" class="form-control" name="tarjeta" placeholder="Código de Seguridad">
</div><br>
<input type="submit" class="btn btn-primary"value="Mejorar mi cuenta"/>
</div>
</form>