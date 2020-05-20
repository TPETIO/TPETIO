<?php
    define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

    require_once 'controllers/inicio.controller.php';
    
    $action= $_REQUEST['action'];
    $urlAction= explode('/',$action);

 
    switch ($urlAction[0]){
        case '': {
            $ctrl= new NombreClase();
           $ctrl ->mostrarInicio();
        } break;
    }