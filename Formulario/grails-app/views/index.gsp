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
                    <input class="CEP-input" type="text" id="CEP" name="CEP" placeholder="CEP" required onblur="pesquisarCEP(this.value)">
                    <input class="input" type="text" id="endereco" name="endereco" placeholder="Endereço" required>
                    <input class="CEP-input" type="text" id="num" name="num" placeholder="Num" required>
                    <input class="input" type="text" id="complemento" name="complemento" placeholder="Complemento">
                    <input class="input" type="text" id="bairro" name="bairro" placeholder="Bairro">
                    <input class="input" type="text" id="cidade" name="cidade" placeholder="Cidade">
                </div>   
            </div>
            <div class="form-box">
                <input class="input" type="password" id="senha" name="senha" placeholder="Senha" required>
                <input class="input" type="password" id="confirmarSenha" name="confirmarSenha" placeholder="Confirme sua senha" required>
            </div>
            <button type="submit" class="button-form">Cadastrar</button>
        </form>
    </div>

    <script>
        function limparFormularioCEP() {
            document.getElementById('endereco').value = "";
            document.getElementById('bairro').value = "";
            document.getElementById('cidade').value = "";
        }

        function preencherFormularioCEP(conteudo) {
            if (!conteudo.erro) {
                document.getElementById('endereco').value = conteudo.logradouro;
                document.getElementById('bairro').value = conteudo.bairro;
                document.getElementById('cidade').value = conteudo.localidade;
            } else {
                limparFormularioCEP();
                alert("CEP não encontrado.");
            }
        }

        function pesquisarCEP(valor) {
            var cep = valor.replace(/\D/g, '');
            if (cep != "") {
                var validacep = /^[0-9]{8}$/;
                if (validacep.test(cep)) {
                    document.getElementById('endereco').value = "...";
                    document.getElementById('bairro').value = "...";
                    document.getElementById('cidade').value = "...";
                    var script = document.createElement('script');
                    script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=preencherFormularioCEP';
                    document.body.appendChild(script);
                } else {
                    limparFormularioCEP();
                    alert("Formato de CEP inválido.");
                }
            } else {
                limparFormularioCEP();
            }
        };
    </script>
</body>
</html>