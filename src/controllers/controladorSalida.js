// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.3/firebase-app.js";
import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.12.3/firebase-analytics.js";
import { getAuth,onAuthStateChanged, signOut} from 'https://www.gstatic.com/firebasejs/10.12.3/firebase-auth.js'

const firebaseConfig = {
    apiKey: "AIzaSyCG08oLt2BH2XelFls84QHJcDp_jAq6fxw",
    authDomain: "loginsuraduallp.firebaseapp.com",
    projectId: "loginsuraduallp",
    storageBucket: "loginsuraduallp.appspot.com",
    messagingSenderId: "893741934740",
    appId: "1:893741934740:web:bb67149c7c0a204066ac81",
    measurementId: "G-2SRGNKYJJZ"
  };

  const app = initializeApp(firebaseConfig);

  let avatar=document.getElementById("avatar")
  let botonsalir=document.getElementById("botonsalir")

  //utilizando la informacion del usuario logueado
  const auth=getAuth()
  onAuthStateChanged(auth,(user)=>{

    if(user){
       let uid=user.uid
       avatar.classList.remove("invisible")
       avatar.textContent=user.email
    }else{

    }
  })

  botonsalir.addEventListener("click", function(){
   
    signOut(auth).then(()=>{
        avatar.classList.add("invisible")
        window.location.href="./views/login.html"
    })

  })
