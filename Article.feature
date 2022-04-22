#language: pt

Funcionalidade: teste

Cenário: teste
  Dado eu estou na tela "x"
  Quando eu aciono o botão "Y"
  Então o sistema retorna "xy"

Esquema do Cenário: Fazenda e Talhões - Editar Talhão
    Dado o usuário selecionou o ícone "editar" do talhão desejado
    Quando o usuário altera os campos "<Nome>" "<Cor>" "<Data Inicial>" "<Data Final>" do talhão
    E aciona o botão "Editar"
    Então o sistema subistitui os dados anteriores pelos atualizados "<Status>"
    E exibe uma mensagem informando "Feito com sucesso"
    Exemplos:
            | Status     | Nome                            | Cor         | Data Inicial | Data Final |
            | anterior   | AGUA AZUL-Agua Azul-02-Limite_1 | Azul Escuro | 20/04/2022   | 20/04/2022 |
            | atualizado | A-R                             | Vermelho    | 28/04/2022   | 30/04/2022 |
v
