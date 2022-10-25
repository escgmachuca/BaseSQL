
	<?php
$conexion=mysqli_connect('localhost','root','','senado2')
?>

<!DOCTYPE html>

<html>
<link rel="stylesheet" type="text/css" href="css/Estyles.css" />
<head>
<title>Base de datos Senado</title>
</head>
<header>

<h1>Base de datos Senado 2.0</h1>

</header>
<body>
	<br>
    <table border="1">
        <tr>
            <td>
                ID
            </td>
            <td>
                Apellidos
            </td>
            <td >
                Bloque
            </td>

            <td >
                Provincia
            </td>
    
            <td >
                Vigente o Historico
            </td>
        </tr>
<?php
$sql="SELECT * from apellido";
$result=mysqli_query($conexion,$sql);
while($mostrar=mysqli_fetch_array($result)){
?>
  <tr>
     <td><?php echo $mostrar['id_ap']?></td>
	 <td><?php echo $mostrar['apellidos']?></td>
	 <td><?php echo $mostrar['id_bloque']?></td>
	 <td><?php echo $mostrar['id_provincia']?></td>
	 <td><?php echo $mostrar['id_voh']?></td>
  </tr>
  <?php
  }
  ?>  
	</table>
    <br>
<div id="imagenes">
    <br>
<img width="550px" height="320" src="imagenes\bloque.png">
<img width="450px" height="720" src="imagenes\provincia.png">
<img width="550px" height="320" src="imagenes\voh.png">
<br>
</div>
		
	</body>

</html>
