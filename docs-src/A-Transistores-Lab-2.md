Devemos começar a preparar o terreno para os projetos em grupo que estarão por vir, nessa etapa vocês devem montar um grupo de 5/6 colegas e dar um nome a ele (os grupos são nomeados por letras, a primeira letra do nome do seu grupo será fornecida pelo professor).

O grupo irá trabalhar de forma colaborativa via a utilização do git/ github. É imprescindível que todos trabalhem dessa forma, pois será a maneira que iremos avaliar individualmente vocês. 

## GitHub

O git será uma das ferramentas mais importantes para o projeto, com as etapas a seguir vocês realizaram um [Fork](https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow) do repositório do projeto e adicionaram os colaboradores.

### Fork

!!! warning "Um por grupo"
    Daqui até o próximo aviso só uma pessoa do grupo deve fazer! Os demais devem acompanhar.

O [Scrum Master](https://www.scrum.org/resources/what-is-a-scrum-master) do grupo (será sorteado em sala) deverá realizar o [fork](https://help.github.com/articles/fork-a-repo/) do repositório do projeto do computador Z01, para isso, basta acessar a página do github do projeto:

- [`https://github.com/Insper/Z01.1`](https://github.com/Insper/Z01.1)

E no site clicar em **fork**:

![Fork](figs/A-Transistores/A-Ferramental-github-fork.png)

Note que criar um **fork** é diferente de criar apenas uma cópia. No **fork** o seu repositório ainda possui como referência o original (/insper/Z01.1) o que possibilitará que vocês atualizem o repositório com novos materiais que serão necessários ao longo do semestre sem perder o que já foi feito e mais importante sem muito trabalho.

!!! tip "git"
    `fork` não existe no git, é algo implementado pelo github (e similares). É utilizado para criar uma 'cópia' de um repositório para podermos trabalhar nele sem a necessidade de mexermos no original.

### Alterando o nome do Fork

Acesse a página do repositório de vocês no :arrow_right: `github` :arrow_right: `SETTINGS` :arrow_right:  `Repository Name` :arrow_down: e altere o nome do repositório para:

- `nome`:  **Z01.1-NomeDoGrupo**

### Colaboradores

Isso irá criar uma cópia do repositório na sua conta, uma vez realizado a cópia será necessário inserir os demais colegas como integrantes desse repositório (para que eles possam propor alterações). Para isso vá até a página do repositório na sua conta e clique em `Settings` :arrow_right: `Collaborators` e adicione os usuários ou e-mails dos seus colegas. 

!!! note ""
    :point_right: Todos integrantes do grupo já devem ter uma conta no github já criada.

![Collaborators](figs/A-Transistores/A-Ferramental-github-collaborators.png)

### Clonando

!!! warning "Individual"
    Todos do grupo devem realizar de maneira individual!

Uma vez criado o **fork** e adicionado os colegas vocês deverão clonar o repositório para o computador de vocês com o comando:

``` bash
$ git clone URL_DO_FORK
```

??? note "URL_DO_FORK"
    A URL do seu fork pode ser obtida pelo botão 'Clone or Download' do github: 
    ![](figs/A-Transistores/url-fork.png)

!!! linux 
    O símbolo `$` indica que é um comando para ser executado no 
    terminal do Linux (`bash`), mas ele não deve fazer parte do comando.
    No caso anterior, o comando a ser colado deve ser: `git clone URL_DO_FORK`.
    
!!! Linux
    Para abrir o terminal: `meta`+`t` 

### Arquivo GRUPO.json de configuração 

!!! warning "Um por grupo"
    Somente um do grupo deve realizar isso.

Após clonar o repositório o mediador desse projeto deve editar o arquivo json `GRUPO.json` que está localizado na raiz do projeto inserindo a letra do grupo (que foi atribuída em sala) e o nome recém criado do grupo (o nome do grupo deve ser uma Frase com a primeira palavra começando com a letra do Grupo).

Exemplo um grupo com a letra **M**, `GRUPO.json`:

```json
{
  "Nome-Grupo" : "Macarrao" 
}
```

Após editar o arquivo deve-se: fazer um `commit` e um `push` para o repositório. 

```bash
$ git commit -am "update Grupo"
$ git push origin master
```

