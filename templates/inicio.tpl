{include 'header.tpl'}
{include 'barradenavegacion.tpl'}
<div class="contenedor">
    {foreach $comandos item=comando }
        <p class="contenedorbotones">
            <a class="btn btn-primary botones" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                {$comando->comando}
            </a>
        </p>
        <div class="collapse contenido" id="collapseExample">
            <div class="card card-body">
                {$comando->descripcion}
            </div>
            <div class="card card-body">
                <h5>Ejemplo: </h5>
                <p class="ejemplo"> {$comando->ejemplo}</p>
            </div>
        </div>
    {/foreach}
</div>
