<?php
    require_once('libs/Smarty.class.php');
    class VistaInicio{
        private $smarty;
        public function imprimirInicio($comandos, $funciones){
            $smarty = new Smarty(); 
            $this->smarty->asing('funciones', $funciones);  
            $this->smarty->asing('comandos', $comandos);
            $smarty->display('inicio.tpl');
        }
      
    }