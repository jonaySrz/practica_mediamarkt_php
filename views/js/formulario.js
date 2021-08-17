function nuevo(){

    let url = "../controller/nuevo.php";

    let data = new FormData(formulario_nuevo);

    fetch(url, {
        method: "POST",
        body: data
    })
        .then(res => res.json())
        .then(data => console.log(data))
    
    .catch(err => console.log(err));
}

function actualizar(){

    let url = "../controller/actualizar.php";

    let data = new FormData(formulario_update);

    fetch(url, {
        method: "POST",
        body: data
    })
        .then(res => res.json())
        .then(data => console.log(data))
    
    .catch(err => console.log(err));
}
