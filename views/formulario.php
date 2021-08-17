<?php 

require_once '../model/tv.php';
require_once '../model/familia.php';
require_once '../model/marca.php';
require_once '../model/tamaño.php';

if (isset($_POST['actualizar'])) {
    $tv = new TV();

    $tv = $tv->obtener($_POST['codigo']);
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario</title>
</head>
<body>
    
    <?php if (isset($_POST['nuevo'])){ ?>

    <form action="../controller/nuevo.php" method="post" id="formulario_nuevo">

    <label for="codigo">Codigo:</label>
    <input type="text" name="codigo" id="" require>

    <label for="descripcion">Descripcion:</label>
    <input type="text" name="descripcion" id="">

    <label for="familia">Familia:</label>
    <select name="familia" id="">
        <?php 
        $familia = new familia();

        foreach ($familia->listar() as $element){
            ?>
                <option value="<?php echo $element->codigo; ?>"><?php echo $element->familia; ?></option>
            <?php
        }
        ?>
    </select>

    <label for="marca">Marca:</label>
    <select name="marca" id="">
        <?php 
        $marca = new marca();

        foreach ($marca->listar() as $element){
            ?>
                <option value="<?php echo $element->codigo; ?>"><?php echo $element->marca; ?></option>
            <?php
        }
        ?>
    </select>

    <label for="tamaño">Tamaño:</label>
    <select name="tamaño" id="">
        <?php 
        $tamaño = new tamaño();

        foreach ($tamaño->listar() as $element){
            ?>
                <option value="<?php echo $element->codigo; ?>"><?php echo $element->tamaño; ?></option>
            <?php
        }
        ?>
    </select>

    <label for="tipo">Tipo:</label>
    <input type="text" name="tipo" id="">

    <label for="definicion">Definicion:</label>
    <input type="text" name="definicion" id="">

    <label for="smart_tv">Smart TV:</label>
    <input type="checkbox" name="smart_tv" id="">

    <label for="android_tv">Android TV:</label>
    <input type="checkbox" name="android_tv" id="">

    <label for="medidas_sin_peana">Medidas sin peana:</label>
    <input type="text" name="medidas_sin_peana" id="">

    <label for="color">Color:</label>
    <input type="text" name="color" id="">

    <label for="usb">USB:</label>
    <input type="number" name="usb" id="">

    <label for="hdmi">HDMI:</label>
    <input type="number" name="hdmi" id="">

    <label for="wifi">WiFi:</label>
    <input type="checkbox" name="wifi" id="">

    <label for="compatible">Compatible:</label>
    <input type="text" name="compatible" id="">

    <label for="precio">Precio:</label>
    <input type="number" name="precio" id="">

    <label for="imagen">Foto:</label>
    <input type="file" name="imagen" id="">

    <button type="button" onclick="nuevo();">Enviar</button>
    <button type = "button">Cancelar</button>

    </form>

    <?php };?>

    <?php if (isset($_POST['actualizar'])) {?>

        <form action="../controller/actualizar.php" method="post" id="formulario_update">

<label for="codigo">Codigo:</label>
<input type="text" name="codigo" id="" require value="<?php echo $tv->codigo ?>">

<label for="descripcion">Descripcion:</label>
<input type="text" name="descripcion" id="" value="<?php echo $tv->descripcion ?>">

<label for="familia">Familia:</label>
<select name="familia" id="">
    <?php 
    $familia = new familia();

    foreach ($familia->listar() as $element){
        ?>
            <option value="<?php echo $element->codigo; ?>" <?php if ($element->codigo == $tv->familia) {echo 'selected';} ?>><?php echo $element->familia; ?></option>
        <?php
    }
    ?>
</select>

<label for="marca">Marca:</label>
<select name="marca" id="">
    <?php 
    $marca = new marca();

    foreach ($marca->listar() as $element){
        ?>
            <option value="<?php echo $element->codigo; ?>" <?php if ($element->codigo == $tv->cod_marca) {echo 'selected';} ?>><?php echo $element->marca; ?></option>
        <?php
    }
    ?>
</select>

<label for="tamaño">Tamaño:</label>
<select name="tamaño" id="">
    <?php 
    $tamaño = new tamaño();

    foreach ($tamaño->listar() as $element){
        ?>
            <option value="<?php echo $element->codigo; ?>" <?php if ($element->codigo == $tv->cod_tamaño) {echo 'selected';} ?>><?php echo $element->tamaño; ?></option>
        <?php
    }
    ?>
</select>

<label for="tipo">Tipo:</label>
<input type="text" name="tipo" id="" value="<?php echo $tv->tipo ?>">

<label for="definicion">Definicion:</label>
<input type="text" name="definicion" id="" value="<?php echo $tv->definicion ?>">

<label for="smart_tv">Smart TV:</label>
<input type="checkbox" name="smart_tv" id="" <?php if($tv->smart_tv == 1){ echo 'checked';} ?>>

<label for="android_tv">Android TV:</label>
<input type="checkbox" name="android_tv" id="" <?php if($tv->android_tv == 1){ echo 'checked';} ?>>

<label for="medidas_sin_peana">Medidas sin peana:</label>
<input type="text" name="medidas_sin_peana" id="" value="<?php echo $tv->medidas_sin_peana ?>">

<label for="color">Color:</label>
<input type="text" name="color" id="" value="<?php echo $tv->color ?>">

<label for="usb">USB:</label>
<input type="number" name="usb" id="" value="<?php echo $tv->usb ?>">

<label for="hdmi">HDMI:</label>
<input type="number" name="hdmi" id="" value="<?php echo $tv->hdmi ?>">

<label for="wifi">WiFi:</label>
<input type="checkbox" name="wifi" id="" <?php if($tv->wifi == 1){ echo 'checked';} ?>>

<label for="compatible">Compatible:</label>
<input type="text" name="compatible" id="" value="<?php echo $tv->compatible ?>">

<label for="precio">Precio:</label>
<input type="number" name="precio" id="" value="<?php echo $tv->precio ?>">

<label for="imagen">Foto:</label>
<input type="file" name="imagen" id="">

<button type="button" onclick="actualizar();">Enviar</button>
<button type = "button">Cancelar</button>

</form>

<?php };?>

<script src="./js/formulario.js"></script>
</body>
</html>
