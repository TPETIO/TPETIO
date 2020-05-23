{include 'header.tpl'}

    {foreach $comandos item=comando }
        <p>
            <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                {$comando->comando}
            </a>
        </p>
        <div class="collapse" id="collapseExample">
            <div class="card card-body">
                {$comando->descripcion}
            </div>
        </div>
    {/foreach}
  
