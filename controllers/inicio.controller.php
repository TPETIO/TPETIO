<?php
require_once 'views/inicio.view.php';
require_once 'models/inicio.model.php';

class ControladorInicio{
    private $modelo;
    private $vista;

    public function __construct()

    
    {
        $this->modelo = new ModeloInicio();
        $this->vista = new VistaInicio();
    }

    public function mostrarInicio(){
        $comandos = $this->modelo->traerTodosComandos();
        $funciones = $this->modelo->traerTodasFunciones();
        $this->vista->imprimirInicio($comandos, $funciones);
    }
}