# Poderada Swift-UI - Semana 6

## Introdução
&emsp; Essa ponderada visa demonstrar as habilidades desenvolvidas durante as aulas de desenvolvimento IOS com o foco de os alunos, em grupo, desenvolverem uma aplicação mobile voltada para assistir séries, animes e desenhos.

No [Enuncidado da Ponderada](https://docs.google.com/document/d/1zDncaVS1_GCMda-iKoNVH_jAj-u_aONVD6usNo58YZg/edit?tab=t.0#heading=h.1jlzt2kbbold), é definido quais são as 4 telas que devem ser desenvolvidas e é explicado quais são os critérios de aceite e "ir além" do trabalho.

Além da navegação entre telas, a atividade também focava na utilização de componentes reutilizáveis e organização de layouts com VStack, HStack e ZStack.

Resumidamente, o projeto consiste em uma tela principal que contém uma lista de séries e telas secundárias que contém o detalhamento dos conteúdos.

### Integrantes
- Fernando Soares
- Pietra Batista
- João Victor Wandermurem
- Roberto Diniz

---

## Planejamento do Trabalho

&emsp; A primeira coisa que o grupo fez foi se juntar para entender como seria feito a ponderada, para isso era necessário que todos lêssem o documento de referência fornecido contendo as instruções. Todos leram um pouco individualmente e depois começou a discussão em grupo, onde todos os membros disseram o que haviam entendido do documento. Essa parte foi registrada em uma gravação no celular da Pietra, que poderá ser disponibilizado se o Orientador solicitar;

Após identificar o que significava os respectivos códigos, o grupo montou o repositório no Xcode e criou a estrutura de pastas inserindo os "esqueletos" do enunciado. Em seguida, definimos a ordem desenvolvimento que seria feito, optamos por seguir a seguinte ordem:

- Componentes;
- Tela Principal;
- Detalhamento;
- "Ir além" - Complementos do projeto.

---

## Desenvolvimento Geral
&emsp; O desenvolvimento Inicial foi marcado pela Pietra e o Fernando Digitando o código no Xcode enquanto eu e o roberto fomos dando sugestões do que deveria ser feito.

O grupo já havi entendido a diferença entre `HStack`,`VStack` e `ZStack` para personalizar as telas, não iremos detalhar muito para não ficar repetitivo, e para outros componentes usamos o atalho `command + shift + l` que mostra _examples_ do swift;

Após criar a estrutura de pastas e inserir os models e códigos base, começamo o desenvolvimento dos componentes:

- `showcard` que é o card resumo onde está a avalição do conteúdo, o nome e também é um botão que passa para a página de detalhamento, onde estão os conteúdos; Para esse componente contamos com auxílio de IA para montar o _Rectangle_ que é um detalhe colorido ao lado co componete, as outras partes foram desenvolvidas integralmente pelo time; O Wireframe original utilizava um emoji para o conteúdo, mas o grupo deicidiu usar a imagem do desenho para ficar mais detalhado com o `asyncImage` com um switch case considerando a internet do usuário, se tiver ele puxa a imagem, caso contrário ele usa um emoji. Dentro deste componente também inserimos personalizações com métodos como:
    - .font()
    - .padding()
    - bold()
    - ClipShape()
    - Entre outros

- O `infoBadge` são os badges onde estão informações sobre a série na tela de detalahemnto, contendo o número de apisódios, o número de temporadas a tela e os status do usuário; Para ele usamos um `Vstack` para organizar as informações;

- `characterRow` é a lista que guarda os personagens de cada série e suas informações, por exemplo: protagonista, aliado e antagonista;

A próxima tarefa a ser feita foi a tela principal, onde usamos o componente `Showcard` para puxar as informações dos conteúdos, que é basicamente um compnente que vai puxar todos os conteúdos dos models das séries até acabar;

A tela de detalhamento foi uma tela diferente, pois  contém mais informações e precisava da possibilidade de o usuário "escrolar". Começamos na estrutura usando um `ScrollViẽw` seguido de um `Vstack`o primeiro é para organizar as coisas em pilhas verticais, o segundo foi usado para inserir _HeroSction_ onde está a foto do desenho, título e tipo(anime, série, desenho)

Na mesma tela colocamos outra `Vstack`  para poder inserir as informações, como sinopse e chamar o componente `InfoBadge` abaixo dele fica o componente `characterRow` com um _for Each_ para que o código consiga puxar as informações referentes aos personagens;

---

## Ir além

O enunciado do trabalho contemplava alguns requisitos de qualidade, porém o grupo entendeu que queria entregar mais coisas para o trabalho, aumentando a qualidade, para isso, foi feito:

    - Todos os programas não estão hardcoded, eles são puxados no DatailView, onde ele consome dos models, que tem uma variável chamada TodososProgramas que contém os programas adcionados;

    - Colocamos Imagens no Detail e no ListaView,onde estavam os emojis(Recomendação do próprio professor Murilo); As imagens são puxadas da Internet via `URL`
    
    - Usamos IA de forma conciente, só tirando dúvidas em relação a códigos específicos. O grupo entendeu os pontos fortes e fracos de cada um devido ao debate inicial e onde todos tiveram sugestões e ideias para adicionar ao código; 
---

## Resultado Final
Abaixo estão as imagens do que foi desenvolvido e um vídeo demonstrativo:

### Tela Principal
<p align="center">
  <b>Título:</b> Tela Principal - Visão Geral<br>
  <img src="/assets/telaprincipal1.jpeg" width="250" alt="Tela Principal 1"><br>
  <i>Fonte:</i> Os Autores (2026)
</p>

<p align="center">
  <b>Título:</b> Tela Principal - Navegação<br>
  <img src="/assets/telaprincipal2.jpeg" width="250" alt="Tela Principal 2"><br>
  <i>Fonte:</i> Os Autores (2026)
</p>

### Hora de Aventura
<p align="center">
  <b>Título:</b> Detalhes da Série - Hora de Aventura<br>
  <img src="/assets/telaDetalheHaventura0.jpeg" width="250" alt="Tela Hora de Aventura 1"><br>
  <i>Fonte:</i> Os Autores (2026)
</p>

<p align="center">
  <b>Título:</b> Menu de Episódios - Hora de Aventura<br>
  <img src="/assets/telaDetalheHaventura.jpeg" width="250" alt="Tela Hora de Aventura 2"><br>
  <i>Fonte:</i> Os Autores (2026)
</p>

### The Office
<p align="center">
  <b>Título:</b> Detalhes da Série - The Office<br>
  <img src="/assets/telaDetalheOffice.jpeg" width="250" alt="Tela The Office 1"><br>
  <i>Fonte:</i> Os Autores (2026)
</p>

<p align="center">
  <b>Título:</b> Menu de Episódios - The Office<br>
  <img src="/assets/telaDetalheOffice1.jpeg" width="250" alt="Tela The Office 2"><br>
  <i>Fonte:</i> Os Autores (2026)
</p>

### Vídeo demonstrativo - Clique na Imagem!
<p align="center">
  <b>Título:</b> Vídeo do Aplicativo de Séries e Filmes<br>
  <a href="https://youtube.com">
    <img src="/assets/telaprincipal1.jpeg" width="250" alt="Clique para assistir ao vídeo demonstrativo">
  </a><br>
  <i>Fonte:</i> Os Autores (2026)
</p>

---

## Contribuições e Dificuldades

Essa sessão visa demonstrar o relatório indivial de cada um dos membros mostrando suas contribuições e dificuldades no desenvolvimento;

### Fernando Soares

---

### João Wandermurem

Fiquei responsável por ajudar o time a entender os códigos fornecidos pelo professor, e dar sugestões para que a interface ficasse bonita visualmente. Também ajudei dando "pitacos" para alguns erros de desenvolvimento que foram ocorrendo ao longo do trabalho.

Minhas principais dificuldade foram em relação a métodos específicos do SwiftUI de interface, pois não sabíamos de cabeça e precisamos recorrer ao uso de pesquisa no google ou com IA para adquirir algumas informações;

---

### Pietra Batista

---

### Roberto Diniz

---

## Conclusão
&emsp; Com essa atividade, conseguimos praticar conceitos importantes de SwiftUI, principalmente:
- componentização;
- navegação entre telas;
- organização visual com stacks;
- reutilização de código;
- estruturação de interfaces.
