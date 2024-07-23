console.log("hola")

let boton=document.getElementById("botonChat")
console.log(boton)
boton.addEventListener("click", function(){
    console.log("hola")
    let cajaChat=document.getElementById("cajaChat")
    if(cajaChat.style.display=="none" || cajaChat.style.display==""){
        cajaChat.style.display="block"
    }else{
        cajaChat.style.display="none"
    }
})
   



