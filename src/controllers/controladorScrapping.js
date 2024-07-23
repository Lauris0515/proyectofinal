fetch("../scraping/data.json",{
    method:"GET"
}).then(function(respuesta){
    return respuesta.json()
})
.then(function(respuesta){
    console.log(respuesta)
})

