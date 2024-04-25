<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Cadastro</title>
</head>
<body class="container">
    <div class="container-form">
        <h2>Cadastro</h2>
        <form action="#" method="post">
            <div class="form-box">
                <input class="input" type="text" id="nome" name="nome" placeholder="Nome" required>
            </div>
            <div class="form-box">
                <input class="input" type="email" id="email" name="email" placeholder="E-mail" required>
                <input class="input" type="text" id="CPF" name="CPF" placeholder="CPF" required>
            </div>
            <div class="form-box">
            <div class="form-box-endereco">
                <input class="CEP-input" type="text" id="CEP" name="CEP" placeholder="CEP" required>
                <input class="input" type="text" id="endereco" name="endereco" placeholder="Endereço" required>
                 <input class="CEP-input" type="text" id="num" name="num" placeholder="Num" required>
                 <input class="input" type="text" id="complemento" name="complemento" placeholder="Complemento">
             </div>   
            </div>
            <div class="form-box">
                <input class="input" type="password" id="senha" name="senha" placeholder="Senha" required>
                <input class="input" type="password" id="senha" name="senha" placeholder="Confirme sua senha" required>
            </div>
                <button type="submit" class="button-form">Cadastrar</button>
        </form>
    </div>
</body>
</html>
</html>
