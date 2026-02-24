<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WZN DEV - Login</title>
    <script src="https://accounts.google.com/gsi/client" async defer></script>
    <style>
        body { background: #0a0a0a; color: white; font-family: sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .container { width: 320px; padding: 25px; background: #150505; border: 3px solid #ff0000; border-radius: 15px; text-align: center; box-shadow: 0 0 15px #ff0000; }
        input { width: 100%; padding: 12px; margin: 8px 0; background: #000; border: 1px solid #ff0000; color: white; border-radius: 5px; box-sizing: border-box; }
        .btn { width: 100%; padding: 14px; background: #220000; color: white; border: 2px solid #ff0000; border-radius: 8px; font-weight: bold; cursor: pointer; }
    </style>
</head>
<body>
    <div class="container">
        <h1 style="color: #ff0000;">WZN LOGIN</h1>
        <input type="email" id="logEmail" placeholder="E-mail">
        <input type="password" id="logSenha" placeholder="Senha">
        <button class="btn" onclick="entrar()">ENTRAR</button>

        <div style="margin-top: 15px; display: flex; justify-content: center;">
            <div id="g_id_onload" data-client_id="SEU_ID_GOOGLE.apps.googleusercontent.com" data-callback="handleCredentialResponse"></div>
            <div class="g_id_signin" data-type="standard"></div>
        </div>

        <p style="margin-top: 15px;"><a href="registro" style="color: #ff0000; text-decoration: none; font-size: 0.8em;">Registrar-se</a></p>
    </div>

    <script>
        function entrar() {
            const e = document.getElementById('logEmail').value;
            const s = document.getElementById('logSenha').value;
            if(e === localStorage.getItem('userEmail') && s === localStorage.getItem('userSenha')) {
                localStorage.setItem('wzn_logado', 'true');
                window.location.href = "painel";
            } else { alert("Dados incorretos!"); }
        }

        function handleCredentialResponse(response) {
            localStorage.setItem('wzn_logado', 'true');
            window.location.href = "painel";
        }
    </script>
    <script src="https://pl28781040.effectivegatecpm.com/e1/e5/ce/e1e5ce5c5e7479ff86c62d035abda4e5.js"></script>
</body>
</html>
