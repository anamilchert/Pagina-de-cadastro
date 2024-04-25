<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Cadastro</title>
</head>
<body class="container">
    <div class="container-form">
        <h2>Cadastro</h2>
        <form action="#" method="post" id="cadastroForm">
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
            <button type="submit" class="button-form" onclick="imprimirInformacoes(event)">Cadastrar</button>
        </form>
        <div id="mensagemSucesso" class="mensagem-sucesso" style="display: none;">
            <p>Cadastro realizado com sucesso!</p>
        </div>
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

        function imprimirInformacoes(event) {
            event.preventDefault();
            var nome = document.getElementById('nome').value;
            var email = document.getElementById('email').value;
            var cpf = document.getElementById('CPF').value;
            var cep = document.getElementById('CEP').value;
            var endereco = document.getElementById('endereco').value;
            var num = document.getElementById('num').value;
            var complemento = document.getElementById('complemento').value;
            var bairro = document.getElementById('bairro').value;
            var cidade = document.getElementById('cidade').value;
            var senha = document.getElementById('senha').value;
            var confirmarSenha = document.getElementById('confirmarSenha').value;

            console.log("Nome:", nome);
            console.log("E-mail:", email);
            console.log("CPF:", cpf);
            console.log("CEP:", cep);
            console.log("Endereço:", endereco);
            console.log("Número:", num);
            console.log("Complemento:", complemento);
            console.log("Bairro:", bairro);
            console.log("Cidade:", cidade);
            console.log("Senha:", senha);
            console.log("Confirmar Senha:", confirmarSenha);

            document.getElementById('mensagemSucesso').style.display = 'block';

            document.getElementById('cadastroForm').style.display = 'none';
        }
    </script>
</body>
</html>