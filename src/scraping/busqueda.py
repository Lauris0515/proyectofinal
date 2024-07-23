import requests
from bs4 import BeautifulSoup
import json

pagina=requests.get("https://www.epssura.com/")
sopa=BeautifulSoup(pagina.text,'html.parser')

contenidos=sopa.find_all('div',class_='blog-sura-card-content')

arregloh3=[]
arreglop=[]

for contenedor in contenidos:
    h3=contenedor.find('h3')
    p=contenedor.find('p')
    
    if h3 and p:
        arregloh3.append(h3.text.strip())
        arreglop.append(p.text.strip())
        

data = {
    "h3_texts": arregloh3,
    "p_texts": arreglop
}

with open('data.json', 'w') as json_file:
    json.dump(data, json_file)


