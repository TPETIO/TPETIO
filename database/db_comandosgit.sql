-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2020 a las 23:24:22
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_comandosgit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comandosgit`
--

CREATE TABLE `comandosgit` (
  `id_comandoGit` int(11) NOT NULL,
  `comando` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `ejemplo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comandosgit`
--

INSERT INTO `comandosgit` (`id_comandoGit`, `comando`, `descripcion`, `ejemplo`) VALUES
(2, 'git config', 'Puede ser usado para establecer una configuración específica de usuario, como sería el caso del email, un algoritmo preferido para diff, nombre de usuario y tipo de formato, etc… Por ejemplo, el siguiente comando se usa para establecer un email:\r\ngit config --global user.email sam@google.com\r\n', ''),
(4, 'git init', 'Podemos ejecutar ese comando para crear localmente un repositorio con GIT. Basta con estar ubicados dentro de la carpeta donde tenemos nuestro proyecto y ejecutar el comando.  Cuando agreguemos archivos y un commit, se va a crear el branch master por defecto.\r\ngit init\r\n', ''),
(6, 'git help', 'Muestra una lista con los comandos más utilizados en GIT.\r\ngit help\r\n', ''),
(7, 'git clone (desde servidor remoto)', 'Este comando se usa con el propósito de revisar repertorios. Si el repertorio está en un servidor remoto se tiene que usar el siguiente comando:', 'git clone alex@93.188.160.58:/path/to/repository\r\n'),
(8, 'git clone (desde servidor local)', 'si estás por crear una copia local funcional del repertorio, usa el comando:\r\n', 'git clone /path/to/repository\r\n'),
(9, 'git add -A\r\n', 'Agrega al repositorio TODOS los archivos y carpetas que estén en nuestro proyecto, los cuales GIT no está siguiendo.\r\n\r\n', 'git commit -A'),
(10, 'git add + path\r\n', 'Agrega al repositorio los archivos que indiquemos.\r\n', ''),
(11, 'git status\r\n', 'Nos indica el estado del repositorio, por ejemplo cuales están modificados, cuales no están siendo seguidos por GIT, entre otras características.\r\n', 'git status'),
(12, 'git commit -m \"mensaje\"', 'Hace commit a los archivos que añadimos usando el comando git add, de esta manera quedan guardados nuestras modificaciones.', 'git commit -m \"añadí la carpeta de estilo\"\r\n'),
(13, 'git push\r\n', 'Envía los cambios que se han hecho en la rama principal de los repertorios remotos que están asociados con el directorio que está trabajando. Por ejemplo:', 'git push  origin master'),
(14, 'git remote', 'El comando git se usa para conectar a un repositorio remoto. El siguiente comando muestra los repositorios remotos que están configurados actualmente:\r\n\r\ngit remote -v\r\n\r\nEste comando te permite conectar al usuario con el repositorio local a un servidor remoto:\r\n', 'git remote add origin <93.188.160.58>\r\n'),
(15, 'git pull\r\n', 'Busca los cambios nuevos y actualiza el repositorio', 'origin <nameBranch>'),
(16, 'git checkout -b NombreDeBranch\r\n', 'Crea un nuevo branch y automáticamente GIT se cambia al branch creado, clonando el branch desde donde ejecutamos el comando.\r\n', 'git checkout -b rama_router'),
(17, 'git branch', 'Nos muestra una lista de los branches que existen en nuestro repositorio.', 'git branch'),
(18, 'git checkout NombreDeBranch\r\n', 'Sirve para moverse entre branches, en este caso vamos al branch que indicamos en el comando.\r\n', 'git checkout rama_router'),
(19, 'git merge NombreDeBranch\r\n', 'Hace un merge entre dos branches, en este caso la dirección del merge sería entre el branch que indiquemos en el comando, y el branch donde estémos ubicados.\r\n', 'git merge rama_router'),
(20, 'git clone URL/name.git NombreProyecto', 'Clona un proyecto de git en la carpeta especificada.', 'git clone URL/name.git CarpetaTP'),
(21, 'git push origin NombreDeBranch\r\n', 'Luego de que hicimos un git commit, si estamos trabajando remotamente, este comando va a subir los archivos al repositorio remoto, específicamente al branch que indiquemos.\r\n', 'git push origin master'),
(22, 'git pull origin NombreDeBranch\r\n', 'Hace una actualización en nuestro branch local, desde un branch remoto que indicamos en el comando.\r\n', 'git pull origin rama_router'),
(23, 'git diff\r\n', 'Este comando se usa para hacer una lista de conflictos. Para poder ver conflictos con el archivo base usa:', 'git diff --base <file-name>\r\n'),
(24, 'git diff entre ramas', 'El siguiente comando se usa para ver los conflictos que hay entre ramas que están por ser fusionadas para poder fusionarlas sin problemas:\r\n', 'git diff <source-branch> <target-branch>\r\n'),
(25, 'git log\r\n', 'Ejecutar este comando muestra una lista de commits en una rama junto con todos los detalles. \r\n', 'commit 15f4b6c44b3c8344caasdac9e4be13246e21sadw\r\n\r\nAuthor: Alex Hunter <alexh@gmail.com>\r\nDate:   Mon Oct 1 12:56:29 2016 -0600\r\n'),
(26, 'git reset\r\n', 'Para resetear el index y el directorio que está trabajando al último estado comprometido se usa este comando', 'git reset - -hard HEAD\r\n'),
(27, 'git rm\r\n', 'Este comando se puede usar para remover archivos del index y del directorio que está trabajando', 'git rm filename.txt\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comandosgit`
--
ALTER TABLE `comandosgit`
  ADD PRIMARY KEY (`id_comandoGit`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comandosgit`
--
ALTER TABLE `comandosgit`
  MODIFY `id_comandoGit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
