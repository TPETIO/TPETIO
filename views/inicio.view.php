<?php
    require_once('libs/Smarty.class.php');
    class VistaInicio{
        private $smarty;
        public function imprimirInicio($comandos){
            $this->smarty = new Smarty();
            $this->smarty->assign('comandos', $comandos);
            $this->smarty->display('inicio.tpl');
        }
      
    }