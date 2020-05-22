<?php
require_once 'view/inicio.view.php';
require_once 'model/unmodelo.model.php';

class ControladorInicio{
    private $modelo;
    private $vista;

    public function __construct()
    {
        $this->modelo = new ClaseModelo();
        $this->vista = new ClaseVista();
    }

    public function mostrarInicio(){
        $comandos = $this->modelo->traerTodosComandos();
        $this->vista->imprimirInicio($comandos);
    }
}