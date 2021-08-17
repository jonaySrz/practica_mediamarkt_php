
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOME</title>
    <link rel="stylesheet" href="./css/main.css">
</head>
<body>

    <div id="modalCard">
        <div class="card">
            <p id="textCard"></p>
            <button id="aceptaBorrar" onclick="siOno(event);">Aceptar</button>
            <button id="noBorrar" onclick="siOno(event);">Cancelar</button>
        </div>
    </div>

    <form action="./formulario.php" method="post">
        <button type="submit" name="nuevo">Nuevo articulo</button>
    </form>

    <input type="text" id="datoFiltro" onkeyup='ajax(1)' autofocus onfocus="this.setSelectionRange(this.value.length, this.value.length)">

    <p><span id="pagina"></span> de <span id="paginas"></span></p>

    <button id="anterior">anterior</button>
    <button id="siguiente">siguiente</button>
    
    <div class="contenedor"></div>

    <script src="./js/main.js"></script>
</body>
</html>