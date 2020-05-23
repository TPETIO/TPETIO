<?php

class ModeloInicio{
    private function crearConexion(){
        $host = 'localhost';
        $userName = 'root';
        $password = '';
        $database = 'db_comandosGit';
        $pdo = new PDO("mysql:host=$host;dbname=$database;charset=utf8",$userName,$password);
        return $pdo;
    }

    public function traerTodosComandos(){
         $db = $this->crearConexion();
         $sentencia = $db->prepare("SELECT * FROM comandosGit");
         $sentencia->execute();
         $comandos = $sentencia->fetchAll(PDO::FETCH_OBJ);
         return $comandos;
    }
}