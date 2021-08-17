function ajax(pagina){

    let borrar = document.getElementsByClassName('ajax_deletable');

    while(borrar.length > 0){
        borrar[0].parentNode.removeChild(borrar[0]);
    }

    let filtro = datoFiltro.value;

    let url = '../controller/controller_tabla_televisores.php'

    let data = new URLSearchParams('listar&filtro='+ filtro +'&inicio='+ (pagina-1)*5);

    fetch(url, {
        method: "POST",
        body: data
    })
        .then(res => res.json())
        .then(data => {

            if(data.success){

                let contenedor = document.querySelector(".contenedor");

                let cantidad = document.getElementById("paginas").innerHTML = Math.ceil(data.cantidad / 5);

                if (pagina > cantidad){
                    pagina = cantidad;
                    document.getElementById("pagina").innerText = cantidad;
                }

                else {
                    pagina.innerHTML = pagina;
                    document.getElementById("pagina").innerText = pagina;
                }

                for(let i in data.datos) {
                    let div = document.createElement('div');

                    div.className ="ajax_deletable card";

                    div.innerHTML = `<img src="../assets/imagenes/${data.datos[i].codigo}.png" alt="imagen del producto">
                    <p><strong>Código: </strong>${data.datos[i].codigo}</p>
                    <p><strong>${data.datos[i].descripcion}</strong></p>
                    <p><strong>${data.datos[i].precio}.00 €</strong></p>

                    <form method="POST" action="./formulario.php">
                    <input type="hidden" name="codigo" value="${data.datos[i].codigo}">
                    <input type="hidden" name="descripcion" value="${data.datos[i].descripcion}">
                    <button type="submit" name="actualizar">Actualizar</button>
                    <button type="button" onclick="borrar(event);">Borrar</button>
                    </form>`

                    contenedor.appendChild(div);
                };
            }
    })

    .catch(err => console.log(err));
}


window.addEventListener('load', ()=>{
    ajax(1);
})

siguiente.addEventListener("click", ()=> {

    if (pagina.innerText < paginas.innerText){
        ajax(parseInt(document.getElementById("pagina").innerText)+1);}
});


anterior.addEventListener("click",  ()=> {

    if (pagina.innerText <= paginas.innerText && parseInt(pagina.innerText) > 1){
        ajax(parseInt(document.getElementById("pagina").innerText)-1);
    }
});

function hidde(){
    modalCard.style.opacity = '0'
    modalCard.style.pointerEvents = 'none';
}

function show(){
    modalCard.style.opacity = '1'
    modalCard.style.pointerEvents = 'auto';
}

function borrar(event){
    event.preventDefault();

    textCard.innerText = '¿esta seguro que desea borrar el articulo: ' + event.target.parentNode.elements.codigo.value + ', ' + event.target.parentNode.elements.descripcion.value + '?';

    data = new FormData();
    data.append('eliminar','');
    data.append('codigo',event.target.parentNode.elements.codigo.value);

    show();
}

async function siOno(event){
    if (event.target.id == 'aceptaBorrar'){
        let url = '../controller/borrar.php';

        await fetch(url, {
            method: "POST",
            body: data
        })

        .then(res => {if (res.status == 200){
            hidde();
            ajax(1);
        }})

        .catch(err => console.log(err));
    }

    else {
        hidde();
    }
}

let data;