{include 'header.tpl'}
{include 'barradenavegacion.tpl'}

<div id="accordion">
    {foreach $funciones item=funcion }
        <div class="card">
            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    {$funcion->funcion}
                    </button>
                </h5>
            </div>
            {foreach $comandos item=comando }
                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <h6>{$metodo->metodo}</h6>
                        {$metodo->descripcion}
                    </div>
                </div>
            {/foreach}
        </div>
    {/foreach}
  
</div>

