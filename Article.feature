#language: pt

Funcionalidade: Conduit Article
Conduit é uma aplicação para publicação de artigos *uma comunidade*

videos feitos em cima da versão demo do Conduit

@manual-result:success
Cenário: Conduit - Acessar New Article
[Fluxo de uso](assets/AcessarNewArticle.webm)
    Dado o usuário fez "Login"
    Quando ele aciona o botão "New Artcle"
    Então o sistema exibe a tela "New Article"

@manual-result:success
Cenário: Conduit - New Article
[Fluxo de uso](assets/NewArticle.webm)
    Dado o usuário estar na tela "New Article"
    Quando ele preenche os seguintes campos 
            |Campos|Valor|
            |Article Title|Teste|
            |What´s this article about?|Estou testando a plataforma|
            |Write your article (markdown)|**Teste 01**|
            |Enter tags|#teste|
    E aciona o botão "Publish Article"
    Então é criado o article
    E é exibida a mensagem "Created successfully"
    E o sistema renderiza a tela exibindo o article criado

@manual
@manual-result:failed
@manual-last-tested:01/04/2022
@manual-test-evidence:assets/Error_NewArticlevalores_inválidos.webm
Cenário: Conduit - New Article com valores inválidos 
    Dado o usuário estar na tela "New Article"
    Quando ele preenche os seguintes campos com valores inválidos
            |Campos|Valor|
            |Article Title|A|
            |What´s this article about?|A|
            |Write your article (markdown)|A|
            |Enter tags|A|
    E aciona o botão "Publish Article"
    Então não é habilitado o botão "Publish Article"
    E não é possivel criar o article

@manual
@manual-result:failed
@manual-last-tested:01/04/2022
@manual-test-evidence:assets/NewArticleValores_nao_preenchidoswebm
Esquema do Cenário: Conduit - New Article com valores não preenchidos
    Dado o usuário estar na tela "New Article"
    E não preencheu com "<Valores>" um dos "<Campos>" 
    Quando ele aciona o botão "Publish Article"
    Então o sistema retorna com a seguinte resposta "<Resposta do sistema>"
    E não é possivel logar
    Exemplos: 
            |Campos|Valores|Resposta do sistema|
            |Article Title|ㅤ|This field is required|
            |What´s this article about?|ㅤ|This field is required|
            |Write your article (markdown)|ㅤ|This field is required|
            |Enter tags|ㅤ|tags cannot be blank|

@manual-result:success
Cenário: Conduit - Delete Article
[Fluxo de uso](assets/DeleteArticle.webm)
    Dado o usuário estar na tela do article criado
    Quando ele aciona o botão "Delete Article"
    Então é deletado o Article
    E é exibida a mensagem "Deleted successfully"
    E o sistema renderiza para a tela "Your Feed"

@manual-result:success
Cenário: Conduit - Post Comment
[Fluxo de uso](assets/PostComment.webm)
    Dado o usuário estar na tela do article criado
    Quando ele digita um comentário no campo "Post Comment"
            |testando|
    E aciona o botão "Post Comment"
    Então é postado o comentário

@manual-result:success
Cenário: Conduit - Delete Comment
[Fluxo de uso](assets/DeleteComment.webm)
    Dado o usuário estar na tela do article criado
    E postou um comentário
    Quando ele aciona o ícone "Lixeira"
    Então é exibida a mensagem "Created successfully"
    E é apagado o comentário

@manual-result:success
Cenário: Conduit - Edit Article
[Fluxo de uso](assets/EditArticle.webm)
    Dado o usuário estar na tela do article criado 
    E acionou o botão "Edit Article"
    Quando ele edita um dos valores dos Campos
            |Campos|Valor|Valor Editado|
            |Article Title|Teste|Conduit|
            |What´s this article about?|Estou testando a plataforma|Plataforma Conduit|
            |Write your article (markdown)|**Teste 01**|**BestCode**|
    E aciona o botão "Publish Article"
    Então é editado o article
    E é exibida a mensagem "Updated successfully"
    
@manual
@manual-result:failed
@manual-last-tested:01/04/2022
@manual-test-evidence:assets/Error_EditArticleValorInvalido.webm
Cenário: Conduit - Edit Article com valores inválidos
    Dado o usuário estar na tela do article criado 
    E acionou o botão "Edit Article"
    Quando ele edita um dos valores dos Campos
            |Campos|Valor|Valor Editado|
            |Article Title|Teste|C|
            |What´s this article about?|Estou testando a plataforma|C|
            |Write your article (markdown)|**Teste 01**|C|
    E aciona o botão "Publish Article"
    Então não é habilitado o botão "Publish Article"

@manual
@manual-result:failed
@manual-last-tested:01/04/2022
@manual-test-evidence:assets/Error_EditArticleValorNaoPreenchido.webm
Esquema do Cenário: Conduit - Edit Article com valores não preenchidos
    Dado o usuário estar na tela do article criado 
    E acionou o botão "Edit Article"
    E não preencheu com "<Valores>" um dos "<Campos>" 
    Quando ele aciona o botão "Publish Article"
    Então não é habilitado o botão "Publish Article"
    E o sistema retorna com a seguinte resposta "<Resposta do sistema>"
    Exemplos: 
            |Campos|Valores|Resposta do sistema|
            |Article Title|ㅤ|This field is required|
            |What´s this article about?|ㅤ|This field is required|
            |Write your article (markdown)|ㅤ|This field is required|

@manual-result:success
Cenário: Conduit - View in Global Feed
[Ver video](assets/Conduit-ViewinGlobalFeed.webm)
    Dado o usuário estar na tela do article criado
    Quando ele aciona o botão "Conduit"
    E clica em "Global Feed"
    Então é possivel visualizar todos os articles 

