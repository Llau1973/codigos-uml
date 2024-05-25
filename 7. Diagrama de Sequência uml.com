@startuml
actor Gerente
participant "Sistema" as S
participant "Banco de Dados" as BD

Gerente -> S : Criar Projeto
S -> BD : Inserir Projeto
BD --> S : Confirmação
S --> Gerente : Projeto Criado
@enduml

