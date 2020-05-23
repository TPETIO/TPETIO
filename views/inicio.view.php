<?php
    require_once('libs/Smarty.class.php');
    class ClaseVista{
        private $smarty;
        public function imprimirInicio($comandos, $funciones){
            $smarty = new Smarty(); 
            $this->smarty->asing('funciones', $funciones);  
            $this->smarty->asing('comandos', $comandos);
            $smarty->display('inicio.tpl');
        }
      
    }