fetch("/filtragem/listar/maior-fluxo", {
    method: "GET",
    headers: {
        "Content-Type": "application/json"
    }
}).then(function (resposta) {
    console.log("ESTOU NO THEN DO entrar()!")

    if (resposta.ok) {
        console.log(resposta);

        resposta.json().then(json => {
            console.log(JSON.stringify(json));
            sessionStorage.EMAIL_USUARIO = json[0].email;
        });

    }
  }
);