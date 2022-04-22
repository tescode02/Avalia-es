#language: pt

Funcionalidade: teste

Cenário: teste
  Dado eu estou na tela "x"
  Quando eu aciono o botão "Y"
  Então o sistema retorna "xy"

Cenário: teste 1

CENÁRIO: teste 02
Feature: Fórmula-Nutrição.
   

Cenário: Fórmula
          Dado o usuário está na tela de "visão de Escritório"
          E clica no ícone superior de "três barras" 
          Quando aciona o botão "nutrição"
          E em selecionar "fórmula"
          Então a tela é exibida com sucesso.
______________________________________________________________________________

Cenário: Cadastro Válido
        Dado o usuário está na tela de "Fórmula"
        Quando preenche os seguintes campos
                     |nome da fórmula|Identificação do 
                      produto|unidade base|arredondar,não,para cima ou para baixo|casas decimais|              
                      peso vivo|ganho de peso 
                      diário|adicionar insumo 100%|embalagens do produto|       
                      |crescimento|milho silagem|quilograma|não|320|
                      1,20|selecionar 100%|milho|
         E acessa o botão "salvar"
         Então o cadastro é salvo com sucesso.
______________________________________________________________________________
    
Cenário: Cadastro inválido
           Dado o usuário está na tela de "Fórmula"
           E preenche o seguinte campo incorretamente
                     |<nome da fórmula>|<Identificação do 
                      produto>|<unidade base>|<arredondar,não,para cima ou para baixo>|<casas                     
                      decimais>|<peso vivo>|<ganho de peso 
                      diário>|<adicionar insumo 100%>|<embalagens do produto>|      
           Quando ele acessa o botão "salvar" 
           Então o sistema retorna a <mensagem>
Exemplos:
                     |exemplos| nome da fórmula|Identificação do 
                      produto|unidade base|arredondar,não,para cima ou para baixo|casas decimais|              
                      peso vivo|ganho de peso 
                      diário|adicionar insumo 100%|embalagens do produto|mensagem|
                      |exemplo |crescimento|milho silagem|quilograma|não|320|
                      1,20|selecionar 50%|milho|o somatório do percentual da fórmula precisa ser 100%|
______________________________________________________________________________
                      
Cenário: Esquema de Cenário com campos não Preenchidos
       Dado o usuário está na tela de "formula"
         E não preenche os seguintes campos
                     |<nome da fórmula>|<Identificação do 
                      produto>|<unidade base>|<arredondar,não,para cima ou para baixo>|<casas                     
                      decimais>|<peso vivo>|<ganho de peso 
                      diário>|<adicionar insumo 100%>|<embalagens do produto>|     
        Então o cadastro da fórmula não é salvo.
Exemplos:
                      |exemplos| nome da fórmula|Identificação do 
                      produto|unidade base|arredondar,não,para cima ou para baixo|casas decimais|              
                      peso vivo|ganho de peso 
                      diário|adicionar insumo 100%|embalagens do produto|
                      |exemplo 01|                   | milho silagem|quilograma|não|320|
                      1,20| selecionar 100% |milho|
                      |exemplo 02|crescimento|        |quilograma|não|320|
                      1,20| selecionar 100%|milho|
                       |exemplo 03|crescimento|         |         |não|320|
                      1,20|selecionar 100% |milho|    
_________________________________________________________________

Cenário: Cancelar Fórmula
          Dado o usuário está na tela de "Fórmula"
          Quando preenche o cadastro da fórmula
          E acessa o botão "cancelar"
         Então é cancelada a fórmula preenchida.
______________________________________________________________________________
 Cenário: Cadastro de embalagem
           Dado o usuário está na tela de "fórmula"
           E acessa o botão nova embalagem
           Quando preenche os seguintes campos
                            |nome embalagem|unidade de medida|quantidade|
           E clica em "salvar"
           Então o cadastro é salvo com sucesso.

