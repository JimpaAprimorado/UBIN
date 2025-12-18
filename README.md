------------------------UBIN-------------------------------

Partindo da nescesidade de construir P3X um engine revolucionario 3D desenvolvi este projeto:

Ao pensar muito sobre qual linguagem usaria, e formas de concretizar a engine P3X, percebi que na atualidade 2025, temos muitas formas de resolver os mesmos problemas. Quando se trata de programação temos muitas opções, porem as mais performáticas ainda são as mais antigas, trabalhosas, complicadas e complexas.

sou relativamente novo na programação, aproximadamente 6 anos, mais o suficiente para perceber que fazer algo grande exige muitas pessoas, e mesmo tendo um bom direcionamento, as coisas são muito complexas, e não deveriam ser.

Pois bem, P3X deve ter modularidade e versatilidade quando se trata de rodar em todos os sistemas operativos, e para isto não basta só a complexidade em sí do software mais tambem os problemas de portatibilidade de código. se eu quiser rodar em web, e tenho o software em pc tenho que migrar o codigo Vulkan para Webgpu ou outras coias etc...

E é com este principio que vos apresento Ubin. eu resolvi chutar o balde para a tecnologia de hoje e imaginar algo fora da caixa outra vez (P3X ja é revolucionario por si só).

Ubin surgiu com esta nescesidade de tornar oque é complexo em simples, pratico, agil. Chega de ficar digitando linhas e linhas..

Hoje a IA ja trouxe para nossas vidas muitas coisas positivas e negativas, trouxe conforto e tragedias. mais em suma ainda é melhor doque pior. Tudo é definido por quem a utiliza e oque espera disto.

Usando-a com boas intensões a humanidade pode ser muito melhor e viver melhor.

Ja adianto a todos que as intensões deste projeto são excelentes para nós seres humanos e devemos ter controlhe sobre isto, pois oque estou prestes a apresentar deve ser implementado com cuidado.

APRESENTANDO O CONCEITO:

vamos iniciar pensando em python. é uma linguagem facil e nos atende bem (mais claro que da pra ser muito melhor que isto). porem tem limitações. eu queria conversar com a GPU usando python, mais tenho que usar APIs, quero fazer um programa mais ainda em python é demorado. No fundo somos todos bem preguiçosos kkk. Ou não temos tempo.

Oque nos impede de fazer qualquer coisa na maquina?. a eu quero criar uma imagem, quero criar um bloco de notas etc.... quando voce pensa em criar algo oque nos limita e atraza, é sempre o processo pratico. Atuar programando, revendo codigos, debugando, aperfeiçoando, isto leva tempo e da trabalho, mesmo em coisas simples. Se eu quero um programa ultra rapido tenho que conversar diretamente com os transistores do CPU, e isso não da pra fazer, não da forma tradicional. antigamente no surgimento dos computadores tinhamos um pouco mais de controlhe, pois era programado mecanicamente. mais hoje existem diversas arquiteturas de hardware, cada uma com suas particularidades especificas, drivers etc....

o sistema binário é o mais proximo que podemos ir, mais tambem o mais complexo, ja não somos capazes de entender perfeitamente como funciona de verdade estes codigos. então podemos ainda continuar não conhecendo. E agora como podemos melhorar o desconhecido?.

IA sabe fazer uma imagem muito realista e ela não entende oque é profundidade ou iluminação etc.. mais consegue ainda assim faze-la. IA entende numeros, e com base neles e nosso feedback, asimila a nossas nomenclaturas representativas: faça imagem de uma arvore. ela entende oque é uma arvore porque ja foi treinada a um padrão de numeros que chamamos de arvore, e se ela entrega outra coisa?, dizemos naaaoo, e se a imagem é coerente? dizemos perfeito era isso.

Muito bem, sabendo disso vamos pensar um pouco. Preciso fazer o P3X e quero que ele seja computacionalmente leve, porem completo, que entregue muito e exija pouco.

inventei assim o Ubin. (universal binario)

Adiantamento rapido:
	conseguir o binario de metodos basicos. ele tem que ser capaz de receber inputs e outputs. 
	encadear metodos binarios como forma de programação super otimizada.
	utilizar IA para reconstruir o método mantendo suas caracteristicas porem com mais eficiencia e rapidez.


PlayUbins:

	sistema que controla/programa/ordena Ubins+Mubins, gerando a combinação nescessária para que o usuario/desenvolvedor atinja o objetivo final.
	Programa especifico de programação "visual", voce Ubins/Mubins encadeados/organizados, e no final voce tem seu programa linguagem de maquina mais otimizado.
	
	
Ubin.bin:
	é um conjunto de metodos minimos ISA que agrupados de forma correta se tornam um método ex: soma(1,2)
	cada arquitetura ex: x86-64 / arm etc.. exige 1 Ubin.soma igual em método porem diferente em compatibilidade.
	
PUbins.bin: (para usar Ubins em outras linguagens voce baixa o pacote mais atualizado de Ubins para sua arquitetura)
	conjunto que contem todos metodos existentes de Ubins para arquitetura desejada. voce importa chama o metodo que quer, ele executa e devolve o resultado.
	
	
Nota: Considerar a possibilidade real de que Ubins e derivados não executarem em linguagens de programação a não ser PlayUbins, devido a possiveis incompatibilidades. E isso depende do rumo que o projeto vai tomar.
------------------------------------------------------------------------------------------------------------------------------
cada arquitetura de computador como: x86-64, tem ISA (Instruction Set Architecture) É a “língua” do processador.
O processador só entende essas instruções.
Cada instrução vira um conjunto de micro-operações (uops).
Cada uop vira portas lógicas sendo ativadas.
Cada porta lógica é física, limitada, finita.

estas instruções são dadas pelos fabricantes:

A Intel e a AMD definem o conjunto de instruções x86-64 (também chamado AMD64).
Todas as CPUs compatíveis com x86-64 suportam o mesmo núcleo de instruções básicas: mov, add, sub, cmp, jmp, call, ret, etc.
Isso significa que um programa binário seguindo parametros para x86-64 funciona em qualquer CPU que siga o padrão, independente do fabricante.

Ou seja se eu utilizar estas instruções para criar um Ubin.bin que tenha a mesma funcionalidade do método FOR em python eu consigo rodar em todas maquinas x86-64.

Alen das instruções padronizadas cada fabricante tem Extensões opcionais especificas de sua construção:

Intel por ex tem instruções especificas dela: SSE, AVX, AVX2, AVX-512, TSX
AMD por ex tambem tem instruções especificas: SSE, AVX, AVX2, 3DNow (mais antigas), etc.

e neste ponto se fizermos Ubin.bin para laço "FOR" que contenha algumas dessas instruções especiais teremos que ter 1 Ubin.bin para rodar em Intel's, e outro Ubin.bin para rodar em AMD's

ISA - Estas instruções são uma padronização e atuam na entrada dos processadores, oque acontece internamente cada fabricante faz de um jeito e de jeitos diferentes para cada modelo de processador criado, oque chamamos de Microarquitetura, na qual fisicamente processadores são diferentes em termos de microarquitetura.
Mas isto não interfere nas instruções, pois no final a arquitetura converge para manter o mesmo padrão. Oque muda é que microarquitetura define se o processo é mais lento, mais rapido, consome mais energia, é melhor em um tipo especifico de calculo/comparação etc.. e isso é uma coisa que não podemos mudar ja que depende da composição física do processador.

as instruções podem ser escritas de 3 formas basicas:

Assembly, Codigo de maquina(bytes), hexadecimal.
vamos focar na camada mais diréta, o Codigo de maquinas. estes codigos(bytes) ja conseguem ser interpretados pelo processador, e é a unica forma de comunicarmos diretamente com ele, não existindo nada abaixo disto em termos de software.

formatos executáveis para cada tipo de sistema operativo:
os formatos executaveis, não é uma linguagem, nem uma instrução, nem bytecode específico da CPU. É uma caixa que organiza os bytes que a CPU realmente vai rodar. descrevendo o programa com metadados + bytes reais.


Windows → formato PE/PE32/PE32+
Android usa ELF, igual ao Linux.
iOS / macOS → Mach-O Apple não usa ELF nem PE. Usa Mach-O, que é similar ao ELF, mas com estruturas diferentes.


estes formatos executaveis são nescessários não ha como fugir disto no momento em que estamos dentro de um Sistema Operacional, este é o metodo mais seguro. Temos 2 formas de rodar bytes: incluindo dentro do executavel, ou externamente com um loader.

a opção de embutir é problematica proque precisamos gerar todo o executavel se modificar um unico byte, apesar de ser mais rapido e mais seguro.

vamos escolher usar Loader, para deixar executavel minimo, e tornar modular os bytes.

então funciona +- assim: conjunto de ISA organizados para formar algo(por ex: uma simples soma(x+y) -> arquivo.bin -> Syscall -> Loader -> CPU.

quando dizemos CPU é claro que ainda tem a parte da memoria ram etc.. mais para facilitar vamos pensar somente no CPU por enquanto.


Bom, apartir de tudo isso que ja foi falado, podemos entender que em termos de programação temos possibilidades finitas possiveis para montar um método(ex: soma). visto que no final das contas o processador físico trabalha com portas lógicas. então mesmo que á muitos caminhos para fazer a mesma coisa, podemos encontrar o melhor caminho(mais rapido) que nos trará o mesmo resultado, porem com mais eficiencia energética e velcidade.

com isto em mente podemos:
1- Manualmente, observar a arquitetura e prever os melhores bytes para aquele metodo.
2- Utilizar disparos aleatórios com regras e medições para encontrar o caminho mais rapido.
3- Utilizar IA para testar todas as formas possiveis manipulando ISA, para encontrar o mesmo resultado com um método que funcione de forma mais rapida.


apesar disto ser possivel, mensurar oque se passa dentro do processador é complexo. então percebendo isto continuei a pensar sobre oque poderiamos fazer. Pois em termos de IA eu preciso de um poder computacional enorme, e meu computador é simples.

com essa vontade de melhorar as coisas, e com todas as dificuldades, percebi que a forma que o computador funciona hoje, esta totalmente despadronizada e bagunçada. e quanto mais insistirmos nisto mais problemas virão. Quando fui analizar a GPU eu ja a descartei imediatamente, pois os ISA de cada fabricante variam muito, ficamos a merce dos drivers e eles não são otimizaveis facilmente visto que dependem totalmente do fabricante, e claro o fabricante quer fazer outra GPU para lançar no mercado, então sempre ficara mal otimizado os drivers.

Deixo claro aqui que por hora inicialmente o Projeto se trata de desenvolver na CPU, visto que GPU é extremamente impraticavel utilizar este sistema basico, ja que cada arquitetura possui formas diferentes de interpretação.

então precisamos ver por outros angulos, porem antes de continuar deixarei aqui uma visão ampla sobre oque estamos perdendo.

os monitores as tvs as placas de video etc.. tudo ja é um mini computador muito potente, e ainda assim cada parte separada funciona extremamente mal otimizada. Eu poderia falar muito sobre isto. Mas o intuito não é ofender ninguem. então digo simplesmente que: uma cpu ja basta. Hoje oque importa na computação é: mostrar na tela, e interagir com usuario. só isso. não precisa de GPU, não precisa de nada disso. mais entendo que as questões comerciais estimulam estes desenvolvimentos separados.

ok. voltando ao principal podemos então perceber que para pequenas coisinhas, são nescessárias muitas e muitas coisas complexas. e o intuito principal de Ubin é quebrar este paradigma.

Antes de desenvolvermos o Ubin para como será a implementação com IA, precisamos conhecer o conceito Ubins em sua parcial forma pelomenos.

------------------------------------------------------------------------------------------

Imagine agora que criamos um banco de dados online de Ubins.bin, este banco de dados armazenará os ubins mais rapidos para cada arquitetura. vou exemplificar para melhor compreensão:


laço For loop while etc..

em um laço deste tipo podemos desenvolver por ex um laço for que utiliza os binarios para x86-64 mais rapido, mais não de cara. criamos um binario basico, que ja é bem rapido, então armazenamos-o no banco de dados U.bin _ ele terá alem do nome, tambem uma representação doque ele faz, em termos de nomenclatura, diversas formas podem ser aplicadas, por ex simplesmente nomear os arquivos com numeros, 1.bin, 2.bin etc.. porem para que eu possa explicar mais facilmente, vamos tratar cada arquivo com nomes ja representando oque eles fazem. então ficaria, inout_For.bin inout(significa que o laço For binario contem entradas e saidas. o numero de entradas e o numero de saidas pode ser variado(ex: in2out1_For.bin). porem todo o codigo binario que compoe este arquivo é deterministico, ou seja se ele tem entradas deve obrigatoriamente receber todas elas. e se tem saidas deve enviar todas elas. apesar de parecer uma limitação, na verdade ´e para facilitar. assim podemos ter mais controlhe dos codigos que serão feitos utilizando Ubins. em casos especificos podemos tambem criar outras variações de For.bin. 

Pois bem agora que ja foi apresentado esta ideia inicial ela pode ser aprofundada.
ate então oque temos são conjuntos binarios que se tornão metodos, podendo ser simples ate complexos. a sacada é que podemos acoplar Ubins dentro de outros Ubins. então se dentro deste inout_For.bin eu quiser introduzir um outro inout_For.bin consigo encadear um metodo dentro do outro. usando MUbin(acoplador de Ubins, uma Mochila de Ubins). se eu quiser então agora ter o primeiro For e ja sabendo que dentro dele teremos o segundo For, introduzimos os 2 dentro de Mubin, e ele os combinará. mais voce leitor(a) pode pensar que neste caso é mais facil criar diretamente um novo Ubin.bin que ja possua exatamente este metodo de comportamento, evitando assim utilizar Mubin. e sim, é isso mesmo, porem para que isso seja desenvolvido mais rapido e escalonavel para varias possibilidades, os usuarios programadores, podem utilizar Mubin, para combinar os Ubins ja existentes, e ao final eles enviam este novo metodo para o banco de dados de Ubins/Mubins. sendo assim teremos um escalonamento muito rapido de todos os metodos nescessários. porem ainda não otimizados, visto que:

1- apenas o primeiro metodo implementado foi feito dirétamente em bytes. oque chamamos de Ubins.bin
2- os derivados criados apartir de Ubins. oque chamamos de Mubins.bin, sao feitos com bytes ainda não otimizados ja que o conjunto formado pelo Mubin, poderia ser reescrito de outra forma binária ainda desconhecido, que tenha melhor performance e viraria Ubins.

porem é impraticavel para nós humanos fazermos para cada Mubin novo que surgir um codigo binario otimizado a mão, ou seja buscando os melhores caminhos do processador para atuar. então esta parte virá com IA.
O funcionamento basico de uma IA é analizar o comportamento de algo e apartir de parametros ja existentes de resposta, compreender o funcionamento de algo, utilizando somente formulas e calculos matemáticos, ou por comparação.

então podemos introduzir IA para analizar os Mubins(Mochila de Ubins acoplados um dentro do outro, pode ser mais de 2) e os torna-los em um Ubin(que seria a melhor representação para aquele Mubin em bytes otimizados para arquitetura especifica, ou seja o caminho mais rapido para atingir o mesmo resultado). porem ainda temos problemas, pois IA para mensurar os melhores bytes tem que avaliar e comparar bytes Mubins com ISA da arquitetura em questão. Para que isso seja bem feito, IA precisa antes de tudo compreender perfeitamente o funcionamento pelomenos parcial de ISA e a intensão de cada Ubin.


para que IA possa compreender a intensão de cada método em comparação com resultado final bytes, ela tem 3 fontes primárias para avaliar:

1- ISA		: bytes minimos logicos padronizados que controlam o processador.
2- Ubin.bin	: codigo de maquina binário resultante, construido por ISA's ordenados(pequenos comandos logicos minimos) padronizados para arquitetura.
3- 

e o terceiro? oque seria?:

para que o ciclo de compreensão da IA seja possivel, ela precisa construir dados sólidos do comportamento de maquina. e relacionalos entre os bytes e a intenção final do usuário.

o ponto final então é: a intensão do usuario. e iniciamos agora o proximo conceito. apresento a voces o UMap:

------------------------------UMAP----------------------------------

atravez da nescecidade de transmitir para IA a intenção do usuário precisei acrescentar um mapeamento de intenções.

antes mesmo de aprofundarmos em Umaps devemos deixar bem esclarecidas algumas coisas:

1- existem muitas formas de atingir o mesmo objetivo, e isso é valido para tudo na vida. e quando se trata de códigos binarios não deixa de ser diferente, é por este motivo que claramente muitos Mubins serão criados de formas diferentes, porem com resultados identicos. e é aqui que as coisas ficam mais interesantes. guardem isso.

2- outro detalhe que preciso deixar bem claro é: todo código Mubin é feito por humanos. logo muitas partes dos códigos contem redundancias e tambem resultados internos ja previamente calculaveis oque chamarei de "ruidos". isto significa que antes mesmo de Mubin ser enviado para o BDD Ubin/Mubins e ser disponibilizado para todos, precisamos desenvolver um sistema que verifica o código Mubin, e remova estas peculariedades. pois para que IA tenha precisão em aprendizado, deve receber os dados bem "mastigados" e mais corretos possiveis, e pára os usuários se utilizarem Mubins dentro de Mubins chieo de ruídos o final resultante seria um novo Mubin ainda mais complexo e problemático.

3- alem destes detalhes tenho que esclarecer que o apice de Ubin será quando voce disser: faça um programa que dobre a dimensão da imagem 2x e com reescalonamento IA. e seu programa está pronto. com todos Ubins montados, e voce ainda pode revisar, alterar e ajustar oque quiser.
e para chegar neste ponto final inicialmente a intesão do usuário deve ser fracionada em passos simples. Veja bem, hoje ja existem IAs capazes de intepretar o texto ou voz e fazer diversas coisas. porem estamos falando aqui de algo muito maior. estamos falando de aproveitamento de hardware e facilidade de programação total. não é como uma IA monta um código hoje. é totalmente diferente.

4- Resultados. O problema agora são os resulados. cada MUbin executado na maquina entrega um resultado. seja um numero uma letra/palavra/frase, um outro MUbin ou Ubin, uma imagem, um pixel, um bip. muitas coisas. então tambem temos que tratar de entender totalmente os resultados antes de entregar para IA. Poderiamos permitir que todos usuários enviasem para nós o Mubin com um texto explicando oque é a intensão e oque é o resultado. porem confiar totalmente nos usuarios é um problema. Os usuários mesmo os de responsabilidade, podem por equivoco enviar um Mubin que não funciona direito, ou tem outro resultado, fóra a despadronização total. então teremos que encontrar outro método de determinar o resultado.

ok agora que ja expliquei o principio básico doque precisamos vou explicar o Umap.

Ja vimos que será nescessário muitos processos para transformar Mubin em um Ubin aceitavelmente performatico e estavel. lembrando que Mubin é rapido mais quando se transforma em Ubin é obrigatoriamente mais performático.

oque afinal Umap faz?.
Umap reune todos os Mubins que tem resultados identicos. esta é a regra. o resultado foi o mesmo? reuna-os. mais é só isso?. não. Umap tambem tem que verificar a intensão, oque realmente o código quer fazer, não basta só o resultado pois tambem a intensão é importante, talvez ate mais doque o result.
então no banco de dados temos muitos Pre_MUbins(MUbins ainda não verificados e refinados) recebidos pelos usuários PlayUbins. Umap organiza-os por pastas internas todos arquivos iguais de resultado, e muito proximos de intensões. Umap tambem cria um mapeamento de links dos quais PlayUbins pode buscar MUbins ja criados/verificados. ou seja se eu estou programando e quero algum método, antes de criar, dou uma olhada no BDD, Ubins e Mubins se há algum que me atende. todos MUbins tem descrição de quem o construiu. isso pode ajudar o proximo usuário a compreender melhor o MUbin em questão, pois muitos deles podem ja ser quase um programa por si só. o usuário sempre optará por Ubins, e só usa MUbin em ultimo caso, tanto baixando um ja pronto, quanto criando um próprio. (estes Mubins são ascessiveis apenas após UMap ter o processado)

Agora que temos um mapeamento bem elaborado, executamos o REFINE_root(App externo uso sómente para desenvolvedores de Ubin). que é o programa responsavel por refinar o código removendo aqueles "ruidos" ja falado antes. ele tem suma importância, pois é ele quem testa o MUbin marca como seguro(codigo responsivo e funcional) e define a intensão real do autor. no entanto ainda existe um detalhe. REFINE_root exige um requerimento explicativo sobre o MUbin, este texto será avaliado pela IA basica linguistica, que reformula a intensão com uma frase menor, e palavras melhores. isto é nescessário porque usuários são de diversas linguas. assim unificando tudo em algo palpavel. o MUbin em questão agora sai fóra do link de Pre_MUbins(Mubins não verificados), e tornase disponibilizado com certificado de verificação para todos usuários de PlayUbins, alem de entra na fila de avaliação manual, no qual um colaborador/desenvolvedor do projeto irá verificar oque o código faz e sua intensão, fará alguns ajustes se nescessário.

Antes de proceguirmos vamos entender PlayUbins.

PlayUbins é um App de programação visual/teclado, não exige mouse, não exige códar diretamente, e é super simples e rapido desenvolver coisas nele, voce perceberá isto quando entramors na parte de designer grafico/interação.

PlayUbins disponibiliza ao user: 

1- Conta pessoal Usuário.
2- Chat para o grupo, (voce pode convidar amigos para participar da programação, conversar tanto chat qnt live audio.)
3- Amigos (adiciona amigos pelo nick, pode ve-los online conversar chat pessoal, ou convidar para grupo)
4- Configs (configurações basicas, tema, som, video etc..)
5- Criar Novo projeto, Continuar Projeto, Testar Projeto, Excluir Projeto, Finalizar Projeto.
6- Enviar Mubin para analize.
7- Minha galeria de Ubins/Mubins predilétos/mais usados, editar galeria etc..


Ao iniciar um projeto, o User pode convidar um amigo para entrar no projeto, Para excluir projeto nescessita da aprovação de todos integrantes do projeto.

Dentro do projeto existem 2 opções principais: Ubins e Mubins. o usuário pode conter um Mubin que ele ja tenha criado, porem ao incluir algum amigo para participar do projeto estes Mubins serão enviados a ele para que tambem possa testar o projeto em sua própria maquina, alem disto todos podem visualizar o projeto e testa-lo, desde que o dono do projeto defina o grau de liberdade para convidados. 

graficamente eu pensei em uma coisa muito interesante. ja estamos anos com linguagens de programação por escrita, e isto ja esta cansativo. A inovação de programação visual apesar de interesante é lenta e pode ser confusa. então teremos uma especie Hibrida, o melhor dos 2 mundos.

imagine agora que temos uma tela confortavel com degradê e dentro dela temos um grid de pontilhados sutis, agora apertamos a tecla A(adicionar) e podemos adicionar um Ubin ou Mubin, selecionamos via seta pra cima ou pra baixo. enter pra escolher. joga pro lado direito setadireita(proximo) e aperta A(adicionar) novamente, então estamos indicando que vamos adicionar outro Ubin. e assim sucesivamente. porem Ubin não esta definido, esta adicionado mais precisamos saber oque ele deve fazer. simples, aperte SHIFT damos setas ate chegar nele, aperte E(editar) entramos na edição. selecione no campo de pesquisas apertando tab e digite o ubin que te atende ou mova com setas paracima e parabaixo e veja tudo que existe de Ubins em secções especificas. se não encontrar aperte esc e dentro do ubin ainda em modo edição aperte T (trocar) elemento troca para Mubin. este é um ex básico de como funciona o modo "visual"  de programaçao. da pra se perceber que é um ambiente totalmente diferente do convencional. e muito agradavel. ainda o usuário poderá solicitar ajuda, tornar  projeto público etc.. e para empresas que vão produzir um software fechado para mais segurança e privacidade podem usar PlayUbinsAdvanced, com muitos outros detalhes avançados alem de poder usar um Server Local e se manter desconectado do servidor original PlayUbins, mantendo assim toda privacidade desejada, e a nescecidade de fazer download dos Ubins e Mubins, a empresa acessa o site e faz o download separadamente do programa, injeta em seu sistema particular e ja fica pronto para uso.

Nota importante!!: em PlayUbins contem a ferramenta REFINE_User, ela é nescessária para que o usuário ja possa melhorar seu código dirétamente.  REFINE_User trabalha removendo ruidos de cada Mubin separado, e ao final do programa, quando todo o projeto estiver pronto ele tambem refina o Mubin final. este processo só acontece na maquina do usuário.

REFINE_Root é nescessário porque ao usuário enviar um Mubin para o server, ele deve ser enviado sem a melhoria REFINE, pois ainda é considerádo um PreMubin, e REFINE_Root pode adotar novos parâmetros de tratamento diferentes dos que REFINE_User usa. isto é devido a nescecidade de mantermos a confiabilidade do código para o consumidor/desenvolvedor, visto que é de extrema importância que usuário tenha um sistema seguro e funcional, ja REFINE_Root pode ser mais agressivo para testes e aperfeiçoamento. em cada versão do REFINE_Root podera ser determinado um novo REFINE_User melhorado e aperfeiçoado, porem sempre seguro e responsivo.



se fosemos agora imaginar como seria um código Ubin em texto seria +- assim:


MUbin.result -> MUbin.se("blz","ok") -> MUbin.result -> Ubin.Print

então vamos compreender por partes.

MUbin.result = aqui seria o resultado 1 do Mubin, ou melhor dizendo output1, ele vai entregar alguma coisa para o proximo comando/bytes

-> = aqui indicamos o proximo comando/bytes

MUbin.se(1,2) = este MUbin espera 3 entradas, a primeira é a entrada esperada(neste casó uma só) = ->, os outros 2 parametros seriam 1 e 2.

-> = proximo comando

MUbins.result = resultado do MUbin anterior como parametro de entrada para o proximo comando

-> = proximo comando

Ubin.Print = aqui temos um comando de print, e perceba que ele é um Ubin oque significa que ja é bem otimizado nos parametros ISA.

para facilitar ainda mais o entendimento farei uma assimilação:


"blz" = 1
"ok" = 2

se "blz" == 1:
	result-2

     1                1               2             2
MUbin.result -> MUbin.se(1,2) -> MUbin.result -> Ubin.Print

    "blz"                "blz"               "ok"          "ok"
MUbin.result -> MUbin.se("blz","ok") -> MUbin.result -> Ubin.Print

este é o mais proximo que podemos ir em texto para entenderem. mais então eu digo agora, porque deve ser um sistema de programação "visual"? porque o Ubin e MUbin podem ter varias entradas e varias saidas. e visualmente representar em texto seria complexo, mais darei um ex:


      
    "haha"                "haha"                    -0             "ok"
MUbin.result -> MUbin.se("blz","ok","não") -> MUbin.result -> Ubin.Print
                         |       "não"          "não"
                         |> MUbin.result -> Ubin.Print
 


então aqui temos a representação de como seria, neste caso temos a saida do primeiro MUbin como "haha", logo o proximo que ira comparar receberá "haha", porem ele vai retornar "não", então encadeamos 2 saidas para 1 MUbin especifico para isto. dai ele trata o resultado e envia para o proximo que é Ubin.Print
apesar de ser simples programar assim ainda é chato. claro ja é um avanço comparado com as programações antigas, mais com o sistema visual veremos exatamente assim, porem ainda melhor, pois digitaremos menos e selecionaremos com mais velocidade, a organização não é nescessária pois o própiro código ja é organizado.

outro detalhe que devo deixar esclarecido é que o sistema de programação PlayUbins, não usa variaveis, e tambem só trabalha com numeros. Mais oque isso quer dizer?.

voce viu acima os pseudocódigos, porem eles não utilizam strings dirétamente. ou seja voce cria uma LIBString(biblioteca de strings), elas são organizadas por numeros, 1,2,3 ate o ifinito se quiser. e então no código voce as referencia. isso parece ruim, mais é uma forma mais organizada de se trabalhar, alem de ajudar muito no REFINEr, pois ele pode identificar oque deve existir e oque pode ser removido sem comprometer a funcionalidade.
é importante dizer que ao final do processo de fabricação do programa teremos somente um MUbin. Porem como foi dito anteriormente, ele precisa da LIBString, que é externa. pois o código real final não contem as strings, somente numeros. dai então o desenvolvedor testa o programa feito, ajusta algo nescessário e quando estiver pronto ele manda "Compilar", isso é, aplique REFINE, inclua no arquivo binário a LIBString, construa o header completo.
	
Se então construimos o código pensando apenas em referenciar letras/palavras em numeros, podemos tornar todo o codigo matematicamente mapeavel. e aplicando REFINE_Root e verificarmos manualmente, teremos um MUbin pronto para uso. mais ainda não podemos disponibiliza-lo para usuários e tambem treinar IA. explicarei mais abaixo.

--------------------------------------------------------------------------------------------------------------------------------

Vimos que cada arquitetura de processador, tem diferenças das quais nós seres humanos precisamos delas, e ao mesmo tempo ficamos prejudicados. a nescecidade de existir muitos tipos de processador, e eles precisam ser diferentes arquitetonicamente falando. A padronização ISA é exelente para programadores usuarios finais, pois permite que um código binario funcione em varias maquinas diferentes. porem é uma limitação para os engenheiros fabricantes de processadores que não podem sair da "caixa", por causa da padronização. e isso é uma bagunça. então estou propondo organizar a bagunça, tornando-a "reciclavel". isso permite que os padrões não sejam mais nescessários(não agora, porem num futuro proximo) e GPU entre na jogada(provisóriamente, visto que o ideal é que aja sómente 1 CPU simples para tudo, provavelmente será NPU que dominará o mercado).

Em qualquer linguagem de programação que utilizarmos para resolver algum problema no final será rodado no processador como bytes. precisamos então encontrar estes bytes, que representam a intensão do usuário. porem se for capturar todo o código(MUbin final) fica dificil iniciarmos. assim vamos fócar em capturar intensões pequenas/minimas como por ex: um simples MUbin feito de 2 Ubins. Mais calme-se, ainda não esta no ponto. 

-------------------------IA Juntor---------------------------------------

implementar IA para selecionar todos MUbins ja refinados e verificados no BDD que contenham o mesmo resultado final e com a mesma intensão(ou pelomenos bem proxima). apartir dai executar cada MUbin repetindo os parametros de entrada e contabilizando o tempo de duração da execução de cada um, escolher o mais performatico e apresentar apenas como 1 resultado. então este ja é o primeiro passo para conseguirmos MUbins mais rapidos.

revisando para facilitar a compreensão:

1- PlayUbins, criamos novo projeto adicionamos primeiro Ubin.for, adicionamos MUbin empyt, renomeamos: MUbin.meumubinforfor, e realocamos Ubin.for dentro dele. duplicamos Ubin.for, e por hora esta em paralelo, modificamos para acoplar(encadear um for dentro de outro). testamos. o resultado final então é MUbin.meumubinforfor, que contem um laço dentro de outro. finalizamos o projeto. entramos na galeria, MUbin.meumubinforfor, descrição, e escrevemos oque é a funcionalidade/intensão, na aba detalhes/instruções de uso, pode deixar vasio. enviamos MUbin para server.

2. Server recebe MUbin, trata-o como PréMUbin. organiza com UMap, aplica REFINE_Root leva para fila de verificação manual.

3- Desenvolvedor testa o MUbin. renomeia se nescessário, ajusta. se precisar dinovo faz REFINE_Root outra vez. estando nos conformes marca-o como verificado.

4- MUbin.meumubinforfor quase pronto

agora então entendemos que MUbin.meumubinforfor não é o único criado com esta funcionalidade for dentro de for. pois há outros métodos melhores para fazer isto. e ainda que não haja perceptivelmente, lembre-se que pelos metodos minimos ISA podemos atinjir mais otimização, porem como esta parte virá no final com IA releve por agora.

oque estou dizendo aqui é que para códigos pequenos como este acima representado pode não ser tão perceptivel que haverá codigos diferentes com mesmos resultados, porem se formos ampliando e perceber que MUbins podem estar dentro de MUbins, teremos códigos muito mais complexos, porem com mesma intensão e mesmo resultado. por tanto para oficialmente tornar um MUbin disponibilizado para comunidade utilizar em PlayUbins, teremos que tratar de escolher qual é o melhor.

sendo assim continuamos:

5- MUbin.meumubinforfor é selecionado pela IA Juntor, que o armazena junto com outros códigos identicos de resultado e proximos de intensão.

6- IA Juntor faz execução de cada MUbin e descobre o mais performático, sendo assim ele o classifica como apto/verificado/refinado. e ainda coloca a estimativa de velocidade que é uma escala para representar o quão rapido é. ex: VELOCITY = 0.6.

7- IA Aloca este MUbin para BDD e o disponibiliza para usuários, tambem envia um certificado ao original criador deste MUbin, e o classifica com uma pontuação. (esta pontuação é importante pois demonstra o desenvolvedor empenhado e tambem gera competitividade que ajuda no desenvolvimento de otimizações), vale resaltar que o nome do MUbin criado pode ser reformulado para ter mais coerencia, e o usuário estará ciente disto.

8- MUbin.For2(MUbin.meumubinforfor renomeado para mais coerencia) esta ápto para entrar na camara de testes onde IA tentará supera-lo.

se entrarmos agora em PlayUbins, e em novo projeto e procurarmos MUbins disponiveis encontraremos o MUbin.for2, ele terá na sua descrição todos os detalhes, e tambem terá seu selo de verificado/refinado, alem da sua velocidade para fins comparativos do usuário. isto é nescessário devido a condições especificas onde empresas tem um ambiente interno fexado e podem utilizar versões diferentes do MUbin.For2, ou seja de tempos em tempos pode ocasionalmente surgir outros MUbins candidatos a suceder o MUbin.For2 anterior, e quem define isto é a IA Juntor, por isto ao invez de tratarmos por versões trataremos por velocidade, e talvez responsividade.


---------------------------------TREINANDO IA PARA BYTES-----------------------------------
Agora estamos preparados para treinar nosso modelo IA que vai: 

1- identificar a intensão do usuario.
2- o resultado que MUbin retorna.
3- o byte final do MUbin.
4- comparar com os metodos minimos de ISA.

então determinamos agora que os MUbins verificados e disponibilizados para usuários, são unicos por método. este é nosso modelo.
e utilizaremos os PréMUbins, como treinamento para IA. nota: PréMUbins mesmo sem REFINE. isso é nescessário para que IA entenda como nós humanos nos expressamos.

muito bem. o objetivo final deste primeiro processo é, IA tente fazer um Ubin que tenha o resultado melhor que o MUbin apresentado, buscando o mesmo resultado de todos os PréMUbins, avaliando a intensão/descrição/VELOCITY.

então se conseguirmos exito nesta parte conseguiremos obter uma IA capaz de interpretar descrições e transforma-las em Ubins. Porem não inicialmente.
no começo ja basta que seja apenas o MUbin convertido para um novo Ubin, ou seja um código binário que é mais veloz que o MUbin, porem tem todas as mesmas caracteristicas funcionais de intensão e resultado.

tendo insto podemos remover/ocultar MUbin.For2, e alocar no BDD Ubin.For2, no qual terá seus dados como descrição, instruções de uso etc.. e tambem sua VELOCITY.

Ubins será apartir de agora um novo sistema de programação ja integrado com IA e banco de dados, poderá encontrar bytes muito mais eficientes para cada arquitetura. e em GPUs tambem será possivel, desde que os fabricantes disponibilizem todo o padrão ISA do hardware especifico.

aos poucos teremos muitos Ubins, e então IA tambem será capaz de compreender a intensão do user/desenvolvedor simplesmente por texto/audio, e construir um APP bem proximo do desejado, o usuário só ajusta as coisas.

perceba que é muito rapido a implementação de IA. o dificil é preparar tudo.



Para finalizar aqui esta INTRODUÇÂO a minha invensão ainda deixo mais um beneficio que vem com todo este projeto:

Projetos feitos com PlayUbins podem ser atualizados facilmente, ja que em suma cada Ubin sempre manterá seu propósito/intensão/resultado, ou seja, sempre que encontramos um novo conjunto de bytes mais eficientes para algum Ubin, ele será disponibilizado para atualização. 

e é assim que deixo agora a parte mais importante deste projeto:

-------------------------!!!!IMPORTANTE!!!!------------------------

Há tanto para ser dito sobre esta minha invenção, que conceitua-la por completo demanda tempo. porem ja posso adiantar prevendo o futuro deste projeto que:

alem de todos os beneficios que virão com este projeto, podemos prever que apartir de quando a IA tiver controlhe absoluto sobre a maquina, compreendendo exatamente a intensão do usuario e o convertendo para bytes mais eficientes, tudo oque há de segurança hoje não funcionará mais.

ataques serão feitos apenas com palavras, pedindo IA para fazer. por isto é de extrema. repito EXTREMA!!! importancia conceituar e implementar regras claras sobre oque deve-se poder fazer, e oque jamais deve-se fazer.

como o projeto ainda esta na faze conceitual, não podemos implementar o funcionamento real de como as regras atuarão no sistema. porem ja podemos defini-las.

CODIGO DE HONRRA Ubin e derivados:

1-Para qualquer sistema implementado ou que utilize o Ubin e derivados como base, são obrigados a:

	1.1 -> Que de nenhuma forma, bytes protegidos/codificados (senhas,contas bancarias etc..) sejam vazados ou utilizados para comprometer usuario final.
	
	1.2 -> toda a utilização do sistema Ubin, deve ir ao maximo e não passando disto, da jurisdição onde reside seu funcinamento final (se voce esta no brasil por ex deve manter tudo em conformidade as regras do brasil, se o sistema foi feito fora do brasil e esta sendo executado no brasil, deve seguir as regras juridicas do mesmo).
	
	1.3 -> IA Ubin não pode ser utilizado para ferir fisicamente, nem intelectualmente, nem digitalmente, nenhum ser humano. independente de qual momento estejamos vivendo (de eras de ouro a guerras mundiais etc...) Ubin e todos derivados devem ser desenvolvidos para o bem e somente para o BEM da humanidade.
	
	1.4 -> qualquer portador do sistema e subsistemas Ubins tem por obrigação controlar e combater(digitalmente/jurisdiciamente) se nescessário, parametros IA que fogem da conformidade aqui estipuladas. obrigando-os a enviar relatórios de erros, e possiveis quebras não intencionais / intencionais do CODIGO DE HONRRA para os desenvolvedores, subdesenvolvedores e ou comunidade responsavel por manter o projeto.
	
2-Para fins academicos, cientificos, experimentais, construção de novos sistemas derivados de Ubin, o proprio sistema Ubin:

	2.1 -> Ubins podem ser reformulados, modificados, otimizados, alterados por completo, desde que siga o mesmo CODIGO DE HONRRA imposto aqui.
	
	2.2 -> Toda nomenclatura existente pode ser alterada somente pelo proprietário desenvolvedor criador do projeto e ou comunidade responsavel, obrigando aos programas subsequentes desenvolvidos apartir deste projeto a alterar e manter em conformidade a nomenclatura atualizada.(isto é para mantermos um padrão linguistico universal)
		2.21 -> Qualquer nova tecnologia construida baseada em Ubins, tem liberdade para criar nomenclatura própria, desde que toda a tecnologia ainda mantenha a nomenclatura base do sistema original para representar as partes(Ubins, Mubins etc...) ja existentes (novos nomes podem ser criados apenas para sistemas não existentes no ubin original, sob responsabilidade do criador/desenvolvedor do conceito ou projeto).
		
3- Auto proteção:
	
	3.1 -> Qualquer IA pode ser acoplada a Ubin, no entanto esta deve manter em conformidade todo o CODIGO DE HONRRA aqui estipulado.



Nota:
	Declaro aqui que sou apenas o responsavel criador do projeto Ubin. porem oque os outros fizerem com este sistema não é de minha responsabilidade. o projeto ainda esta em fase conceitual, mais se tornará funcional, e ainda assim eu não me responsabilizo por outras pessoas. eu fiz o sistema e coloquei regras nele. se alguem ir contra isto não é de minha responsabilidade.

	
