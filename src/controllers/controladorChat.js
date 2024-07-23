let botonSend=document.getElementById("botonSend")
let textoChat=document.getElementById("textoChat")
let mensajesChat = document.getElementById("mensajesChat");

//servicio
let url="http://localhost:8000/vitalbot"
let peticion={
    method:"GET"
}

fetch(url,peticion)
.then(function(respuesta){
    return respuesta.json()
})
.then(function(respuestaBack){

    let preguntas=respuestaBack.map(function(pregunta){
        return pregunta.pregunta
    })

    let respuestas=respuestaBack.map(function(respuesta){
        return respuesta.respuesta
    })

    let indicePregunta = 0;

// Evento de clic del botón
botonSend.addEventListener("click", procesarInput);

// Evento de tecla 'Enter' en el campo de texto
textoChat.addEventListener("keypress", function(event) {
    if (event.key === 'Enter') {
        event.preventDefault(); // Prevenir el comportamiento por defecto de la tecla Enter
        procesarInput(); // Llama a la misma función que el botón de enviar
    }
});

    function procesarInput() {
        let inputUsuario = textoChat.value.toLowerCase();
        textoChat.value = ""; // Limpiar input después de enviar

        if (inputUsuario === "hola") {
            let listaPreguntas = preguntas.map((pregunta, index) => `${index + 1}. ${pregunta}`).join('<br>');
            mensajesChat.innerHTML += `<p class="text-start fw-bold">hola bienvenido, selecciona entre estas opciones  <br> <br> ${listaPreguntas}</p>`;
        } else {
            let numeroPregunta = parseInt(inputUsuario) - 1;
            if (numeroPregunta >= 0 && numeroPregunta < preguntas.length) {
                mensajesChat.innerHTML += `<p class="text-start">${preguntas[numeroPregunta]}</p>`;
                mensajesChat.innerHTML += `<p class="text-end text-primary fw-bold">${respuestas[numeroPregunta]}</p>`;
            } else {
                mensajesChat.innerHTML += `<p class="text-start">Por favor, introduce un número válido o saluda con "Hola" para ver las preguntas disponibles.</p>`;
            }
        }
        mensajesChat.scrollTop = mensajesChat.scrollHeight;
}

})
.catch(function(respuesta){
    console.log(respuesta)
})





