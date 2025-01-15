for(let index = 0; index <= 10; index++){
    console.log(index);
}
function saludar(){
    let user = document.getElementById("txtUser").value;
    let pass = document.getElementById("txtPass").value;
    alert("Te damos la bienvenida = "  + user);
    console.log("Tu password no es secreta, la guardé = " + pass)
}

function sumar() {
    let user = parseInt(document.getElementById("txtUser").value);
    let pass = parseInt(document.getElementById("txtPass").value);
    console.log(user + pass);
}