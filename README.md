Este documento aida esta em fase de organização, o projeto é muito grande então aos poucos irei ajustando-o.
------------------------UBIN-------------------------------

Partindo da nescesidade de construir P3X um engine revolucionario 3D desenvolvi este projeto:

Ao pensar muito sobre qual linguagem usaria, e formas de concretizar a engine P3X, percebi que na atualidade 2026, temos muitas formas de resolver os mesmos problemas. Quando se trata de programação temos muitas opções, porem as mais performáticas ainda são as mais antigas, trabalhosas, complicadas e complexas.

sou relativamente novo na programação, aproximadamente 6 anos, mais o suficiente para perceber que fazer algo grande exige muitas pessoas, e mesmo tendo um bom direcionamento, as coisas são muito complexas, e não deveriam ser.

Pois bem, P3X deve ter modularidade e versatilidade quando se trata de rodar em todos os sistemas operativos, e para isto não basta só a complexidade em sí do software mais tambem os problemas de portatibilidade de código. se eu quiser rodar em web, e tenho o software em pc tenho que migrar o codigo Vulkan para Webgpu ou outras coias etc...

E é com este principio que vos apresento Ubin. eu resolvi chutar o balde para a tecnologia de hoje e imaginar algo fora da caixa outra vez (P3X ja é revolucionario por si só).

Ubin surgiu com esta nescesidade de tornar oque é complexo em simples, pratico, agil. Chega de ficar digitando linhas e linhas..

Hoje a IA ja trouxe para nossas vidas muitas coisas positivas e negativas. mais em suma ainda é melhor doque pior. Tudo é definido por quem a utiliza e oque espera disto.

Usando-a com boas intensões a humanidade pode ser muito melhor e viver melhor.

Ja adianto a todos que as intensões deste projeto são excelentes para nós seres humanos e devemos ter controlhe sobre isto, pois oque estou prestes a apresentar deve ser implementado com cuidado.

APRESENTANDO O CONCEITO:

vamos iniciar pensando em python. é uma linguagem facil e nos atende bem (mais claro que da pra ser muito melhor que isto). porem tem limitações. eu queria conversar com a GPU usando python, mais tenho que usar APIs, quero fazer um programa mais ainda em python é demorado. No fundo somos todos bem preguiçosos hahaha. Ou não temos tempo.

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
	Programa especifico de programação "visual", Ubins/Mubins encadeados/organizados, e no final voce tem seu programa linguagem de maquina mais otimizado.
	
	
Ubin.bin:
	é um conjunto de metodos minimos ISA que agrupados de forma correta se tornam um método ex: soma(1,2)
	cada arquitetura ex: x86-64 / arm etc.. exige 1 Ubin.soma igual em método porem diferente em compatibilidade.
	
PUbins.bin:
	para usar Ubins em outras linguagens voce baixa o pacote mais atualizado de Ubins para sua arquitetura.
	conjunto que contem todos metodos existentes de Ubins para arquitetura desejada. voce importa chama o metodo que quer, ele executa e devolve o resultado.
	
Nota: considera a possibilidade real de que Ubins e derivados não executarem em linguagens de programação a não ser PlayUbins, devido a possiveis incompatibilidades. E isso depende do rumo que o projeto vai tomar

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

Ou seja se eu utilizar estas instruções para criar um Ubin.bin que tenha a mesma funcionalidade do método FOR em python eu consigo roda-lo em todas maquinas x86-64.

Alen das instruções padronizadas cada fabricante tem Extensões opcionais especificas de sua construção:

Intel por ex tem instruções especificas dela: SSE, AVX, AVX2, AVX-512, TSX
AMD por ex tambem tem instruções especificas: SSE, AVX, AVX2, 3DNow (mais antigas), etc.

e neste ponto se fizermos Ubin.bin para laço "FOR" que contenha algumas dessas instruções especiais teremos que ter 1 Ubin.bin para rodar em Intel's, e outro Ubin.bin para rodar em AMD's

ISA - Estas instruções são uma padronização e atuam na entrada dos processadores, oque acontece internamente cada fabricante faz de um jeito e de jeitos diferentes para cada modelo de processador criado, oque chamamos de Microarquitetura, na qual fisicamente processadores são diferentes em termos de microarquitetura.
Mas isto não interfere nas instruções, pois no final a arquitetura converge para manter o mesmo padrão. Oque muda é que microarquitetura define se o processo é mais lento, mais rapido, consome mais energia, é melhor em um tipo especifico de calculo/comparação etc.. e isso é uma coisa que não podemos mudar ja que depende da composição física do processador.

as instruções podem ser escritas na forma mais basica = ASSEMBLY, ou ainda mais baixo nivel Codigo de maquina = byte a byte utilizando hexadecimal para representa-los.

vamos focar na camada mais diréta, o Codigo de maquinas. estes codigos(bytes) ja conseguem ser interpretados pelo processador, e é a unica forma de comunicarmos diretamente com ele, não existindo nada abaixo disto em termos de software.

formatos executáveis para cada tipo de sistema operativo:
os formatos executaveis, não é uma linguagem, nem uma instrução, nem bytecode específico da CPU. É uma caixa que organiza os bytes que a CPU realmente vai rodar. descrevendo o programa com metadados + bytes reais.


Windows → formato PE/PE32/PE32+
Android usa ELF, igual ao Linux.
iOS / macOS → Mach-O Apple não usa ELF nem PE. Usa Mach-O, que é similar ao ELF, mas com estruturas diferentes.

estes formatos executaveis são nescessários não ha como fugir disto no momento em que estamos dentro de um Sistema Operacional, este é o metodo mais seguro. Temos 2 formas de rodar bytes: incluindo dentro do executavel, ou externamente com um loader.

a opção de embutir é problematica porque precisamos gerar todo o executavel se modificar um unico byte, apesar de ser mais rapido e mais seguro.
vamos escolher usar Loader, para deixar executavel minimo, e tornar modular os bytes.

então funciona +- assim: conjunto de ISA organizados para formar algo(por ex: uma simples soma(x+y) -> arquivo.bin -> Syscall -> Loader -> CPU.

Bom, apartir de tudo isso que ja foi falado, podemos entender que em termos de programação temos possibilidades finitas possiveis para montar um método(ex: soma). visto que no final das contas o processador físico trabalha com portas lógicas. então mesmo que á muitos caminhos para fazer a mesma coisa, podemos encontrar o melhor caminho(mais rapido) que nos trará o mesmo resultado, porem com mais eficiencia energética e velcidade.

com isto em mente podemos:
1- Manualmente, observar a arquitetura e prever os melhores bytes para aquele metodo.
2- Utilizar disparos aleatórios com regras e medições para encontrar o caminho mais rapido.
3- Utilizar IA para testar todas as formas possiveis manipulando ISA, para encontrar o mesmo resultado com um método que funcione de forma mais rapida.

apesar disto ser possivel, mensurar oque se passa dentro do processador é complexo. então percebendo isto continuei a pensar sobre oque poderiamos fazer. Pois em termos de IA eu preciso de um poder computacional enorme, e meu computador é simples.

com essa vontade de melhorar as coisas, e com todas as dificuldades, percebi que a forma que o computador funciona hoje, esta totalmente despadronizada e bagunçada. e quanto mais insistirmos nisto mais problemas virão. Quando fui analizar a GPU eu ja a descartei imediatamente, pois os ISA de cada fabricante variam muito, ficamos a merce dos drivers e eles não são otimizaveis facilmente visto que dependem totalmente do fabricante, e claro o fabricante quer fazer outra GPU para lançar no mercado, então sempre ficara mal otimizado os drivers.

Deixo claro aqui que por hora inicialmente o Projeto se trata de desenvolver na CPU, visto que GPU é extremamente impraticavel utilizar este sistema basico, ja que cada arquitetura possui formas diferentes de interpretação.

então precisamos ver por outros angulos, porem antes de continuar deixarei aqui uma visão ampla sobre oque estamos perdendo.

os monitores as tvs as placas de video etc.. tudo ja é um mini computador muito potente, e ainda assim cada parte separada funciona mal otimizada. Eu poderia falar muito sobre isto. Mas o intuito não é ofender ninguem. então digo simplesmente que: uma cpu ja basta. Hoje oque importa na computação é: mostrar na tela, e interagir com usuario. só isso. não precisa de GPU, não precisa de nada disso. mais entendo que as questões comerciais estimulam estes desenvolvimentos separados.

ok. voltando ao principal podemos então perceber que para pequenas coisinhas, são nescessárias muitas e muitas coisas complexas. e o intuito principal de Ubin é quebrar este paradigma.

Antes de desenvolvermos o Ubin para como será a implementação com IA, precisamos conhecer o conceito Ubins em sua parcial forma pelomenos.

------------------------------------------------------------------------------------------

Imagine agora que criamos um banco de dados online, este banco de dados armazenará os MU/Ubins mais rapidos para cada arquitetura. vou exemplificar para melhor compreensão:

Ubins = conjuntos de instruções minimas construidos a mão no formato binario.
MUbins = varios Ubins encadeados, formando um método mais complexo (Multi Ubins).

então armazenamos-o no banco de dados. Ele terá alem do nome, tambem uma representação doque ele faz, numa especie de metadados.

em termos de nomenclatura, diversas formas podem ser aplicadas, por ex simplesmente nomear os arquivos com numeros, 1.bin, 2.bin etc.. porem para que eu possa explicar mais facilmente, vamos tratar cada arquivo com nomes ja representando oque eles fazem. então ficaria, inout_For.bin inout(significa que o laço ex: For binario contem entradas e saidas. o numero de entradas e o numero de saidas pode ser variado(ex: in2out1_For.bin). 

todo o codigo binario que compoe este arquivo é deterministico, ele tem entradas e saidas fixas. apesar de parecer uma limitação, na verdade é para facilitar. assim podemos ter mais controlhe dos codigos que serão feitos utilizando MU/Ubins. em casos especificos podemos tambem criar outras variações de For.bin. 

Pois bem agora que ja foi apresentado esta ideia inicial ela pode ser aprofundada.

ate então oque temos são conjuntos binarios(Ubins) que se tornam metodos(MUbins), podendo ser simples ate complexos. a sacada é que podemos acoplar MUbins dentro de outros MUbins ou seja se dentro deste inout_For.bin eu quiser introduzir um outro inout_For.bin. consigo encadear um metodo dentro do outro.

então construimos um novo Mubin que é a junção de 2 MUbins. mais voce leitor(a) pode pensar que neste caso é mais facil criar diretamente um novo Ubin.bin que ja possua exatamente este metodo de comportamento, evitando assim utilizar Mubin. e sim, é isso mesmo, porem para que isso seja desenvolvido mais rapido e escalonavel para varias possibilidades, os usuarios programadores, podem utilizar Mubins, para combinar os MU/Ubins ja existentes, e ao final eles enviam este novo metodo para o banco de dados.

sendo assim teremos um escalonamento muito rapido de todos os metodos nescessários. porem ainda não totalmente otimizados, visto que:

1- apenas o primeiro metodo implementado foi feito dirétamente em bytes. oque chamamos de Ubins.bin

2- os derivados criados apartir de Ubins. oque chamamos de Mubins.bin, sao feitos com bytes ainda não otimizados ja que o conjunto formado pelo Mubin, poderia ser reescrito de outra forma binária ainda desconhecido, que tenha melhor performance e viraria Ubins.

porem é impraticavel para nós humanos fazermos para cada Mubin novo que surgir um codigo binario otimizado a mão, ou seja buscando os melhores caminhos do processador para atuar. então esta parte virá com IA.

O funcionamento basico de uma IA é analizar o comportamento de algo e apartir de parametros ja existentes de resposta, compreender o funcionamento de algo, utilizando somente formulas e calculos matemáticos, ou por comparação.

então podemos introduzir IA para analizar os Mubins(Multi-Ubins acoplados um dentro do outro ou em linha, pode ser mais de 2) e os torna-los Ubin(que seria a melhor representação para aquele Mubin em bytes otimizados para arquitetura especifica, ou seja o caminho mais rapido para atingir o mesmo resultado). porem ainda temos problemas, pois IA para mensurar os melhores bytes tem que avaliar e comparar bytes Mubins com ISA da arquitetura em questão. Para que isso seja bem feito, IA precisa antes de tudo compreender perfeitamente o funcionamento pelomenos parcial de ISA e a intensão de cada MU/Ubin.

para que IA possa compreender a intensão de cada método em comparação com resultado final bytes, ela tem 3 fontes primárias para avaliar:

1- ISA		: bytes minimos logicos padronizados que controlam o processador.

2- MU/Ubin	: Ubins codigo de maquina binário resultante, construido por ISA's ordenados(pequenos comandos logicos minimos) padronizados para arquitetura ou a junção destes oque se torna MUbins.

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

PlayUbins é um App de programação visual/teclado, não exige mouse, não exige códar diretamente, e é super simples e rapido desenvolver coisas nele, voce perceberá isto quando entrarmors na parte de designer grafico/interação.

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



atualmente o codigo do arquivo play.ubin segue este modelo:

@UBINs:
start.bin 	-> (size=20, off=0)
jmpr14		-> (size=3, off=20)
print.bin 	-> (size=157, off=23)
jmpr14		-> (size=3, off=180)
s1.bin	  	-> (size=8, off=183)
jmpr14		-> (size=3, off=191)
exit.bin  	-> (size=1, off=194)


@MUBIns:
#vai seguir mesmo sistema de Ubins

@IUBINs:
jmp.bin -> (size=12, r14=2, r15=12)
rax.bin -> (size=7, rax=2)
rbx.bin -> (size=7, rbx=2)

@EST:
[20]	-> (size=8, off=195)
[40]	-> (size=8, off=203)

@CPU_1:
jmp(start)	-> (off=211, r14=223, r15=0)
rax(@EST[1])-> (off=223, rax=195)
rbx(@EST[2])-> (off=230, rbx=203)
jmp(s1)		-> (off=237, r14=249, r15=183)
jmp(print)	-> (off=249, r14=261, r15=23)
jmp(exit)	-> (off=261, r14=0"aqui não faz diferença", r15=194) -> 
endoffset=273 #offset real final dos IUbins.

@MULBANREGs:
 

a grande pergunta é:
porque deve ser um sistema de programação "visual"? 

porque o Ubin e MUbin podem ter varias entradas e varias saidas. e visualmente representar em texto seria complexo, mais darei 2 ex:

1: #proximo do código real

@UBINs:
start.bin, exit.bin, print.bin, se.bin, emita.bin, emitb.bin, concat.bin, a-b.bin

@EST:
[3]-{("haha")("blz")("ok")("não")("sim")}-

@CPU_1:                 "haha"                   "blz"      "ok"        "não"
[1]->(0) start [0]->(@EST(3)[1]) emita [1]->(@EST(3)[2], @EST(3)[3], @EST(3)[4]) se -{
	
	[1]->(@EST(3)[5]) emitb [1,2]->([1],[2]) concat [1]->([1]) print [1]->(0) exit. # resultado seria "oksim"
	
	[2]->([2]) a-b [1]->([1]) print [1]->(0) exit. # resultado seria "não"


2: #mais legivel
      
    "haha"              "haha"               -0             "ok"
jmpr14.bin -> se.bin("blz","ok","não") -> jmpr14.bin -> print.bin -> continua código separado
                         |       "não"          "não"
                         |> jmpr14.bin -> Ubin.Print -> continua código separado



então aqui temos a representação de como seria, neste caso temos a saida do primeiro MUbin como "haha", logo o proximo que ira comparar receberá "haha", porem ele vai retornar "não", então encadeamos 2 saidas para 1 Ubin especifico para isto. dai ele trata o resultado e envia para o proximo que é Ubin.Print
apesar de ser simples programar assim ainda é chato. claro ja é um avanço comparado com as programações antigas, mais com o sistema visual veremos exatamente assim, porem ainda melhor, pois digitaremos menos e selecionaremos com mais velocidade, a organização não é nescessária pois o própiro código ja é organizado.

vale lembrar que há ocasiões onde 2 saidas são proscessadas simultaneamente(a-b-a-b-a-b) e em algum momento elas se encontram ou se ramificam ainda mais.

outro detalhe que devo deixar esclarecido é que o sistema de programação PlayUbins, não usa variaveis, e tambem só trabalha com numeros. Mais oque isso quer dizer?.

voce viu acima os pseudocódigos.

no ponto que estou atualmente não existe mais string ou outras coisas do tipo. e isso tratarei mais adiante pois é muito grande o conteudo a apresentar, entenda que em @EST só existem numeros inteiros por enquanto positivos, e/ou bits logicos. cada um limitados ao maximo de 64bits de representação = 8bytes. isso é devido aos registradores 64bits.

voce devem estar perguntando; e porque motivo não colocar o valor diretamente no ubin(digo, na linguamge de programação ex: (51,30)soma1 )?

utilizamos @EST como referencial, primeiro por reaproveitamento, segundo porque @EST será montado junto ao código na ram, o conteudo explicativo é extenso mais ja adianto que:
	@EST é um conteudo base, quando um programa estiver sendo executado poderemos altera-lo em tempo real e se quebrar algo @EST esta preservado, possibilitando o reset do programa sem nescecidade de reiniciar o sistema, isso é crucial, principalmente quando falamos de IA participando disto.

@EST tambem permite que REFINEr possa identificar oque deve existir e oque pode ser removido sem comprometer a funcionalidade.

no final do proscesso teremos um unico MUbin que ja será considerado um programa.
	
a ideia é manter todo o codigo matematicamente mapeavel. aplicando REFINE_Root e verificando manualmente, teremos um MUbin pronto para uso. mais ainda não podemos disponibiliza-lo para usuários e tambem treinar IA. explicarei mais abaixo.

--------------------------------------------------------------------------------------------------------------------------------

Vimos que cada arquitetura de processador, tem diferenças das quais nós seres humanos precisamos delas, e ao mesmo tempo ficamos prejudicados. a nescecidade de existir muitos tipos de processador, e eles precisam ser diferentes arquitetonicamente falando. A padronização ISA é exelente para programadores usuarios finais, pois permite que um código binario funcione em varias maquinas diferentes. porem é uma limitação para os engenheiros fabricantes de processadores que não podem sair da "caixa", por causa da padronização. e isso é uma bagunça. então estou propondo organizar a bagunça, tornando-a "reciclavel". isso permite que os padrões não sejam mais nescessários(não agora, porem num futuro proximo) e GPU entre na jogada(provisóriamente, visto que o ideal é que aja sómente 1 CPU simples para tudo, provavelmente será NPU que dominará o mercado, ou uma outra possibilidade -> CPU analogica não digital(isso pode ser muito interessante)).

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

7- IA Aloca este MUbin para BDD e o disponibiliza para usuários, tambem envia um certificado ao original criador deste MUbin, e o classifica com uma pontuação. (esta pontuação é importante pois demonstra o desenvolvedor empenhado e tambem gera competitividade que ajuda no desenvolvimento de otimizações), vale resaltar que o nome do MUbin criado pode ser reformulado para ter mais coerencia, e o usuário desenvolvedor estará ciente disto.

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




-------------------------------UBINs 2--------------------------------------------------------

-----IA auxiliando tambem dirétamente no programa-------
com a forma que estou desenvolvendo Ubins, IA poderá tambem modificar entradas e saidas, ordem de execução, auxiliar na manutenção / updates de programas e tudo isso em tempo real, mais abaixo irei destrinchar isto.



-----Funcionamento de Ubins na pratica real---------

iniciei então o processo de desenvolvimento, coloquei o conceito em prática, mais para isso ainda nescecitei de mais conceitos e ideias.
pois vamos devagar e sempre Ubins README não é pra qualquer um.

iniciei conceituando a forma na qual os Ubins e MUbins serão executados. e apresento agora a melhor forma que encontrei depois de testar e pensar em várias.

-------------ARQUITETURA de linguagem------------------------

Ubins e MUbins, são apenas bits logicos. portanto criei algumas definições e regras de como funcionará a montagem deles.

quando queremos fazer alguma coisa com esses MU/Ubins precisamos montalos em orden desejada, visto que o funcionamento ate então é ainda sequencial. PlayUbins é o modo visual de se fazer isto, no entanto inicialmente determinei a seguinte forma:

1- fazemos a programação no modo visual, que é a montagem dos binarios em ordem desejada, para alcançar objtivo.

2- PlayUbins gera um arquivo de texto que será processado posteriormente. este arquivo de texto inicialmente vamos programar em texto ja utilizando ele, cortando caminho.

3- apos termos preparado o arquivo play.ubin precisamos de um programa responsavel por montalo, e ele se chama RMI. 

--------------------------play.ubin-------------------------
arquivo gerado pelo executavel PlayUbins que permite a programação de forma visual.
no entanto antes mesmo de eu iniciar a fabricação do programa PlayUbins ja desenvolvi como o arquivo final será.
pensando em debug e facil visualização humana, fiz o arquivo Play.ubin ser simples, e programavel por texto tambem.
no entanto ja adianto a voces que programar em texto só vai funcionar para programas ultra simples, pois quando ganhar complexidade ficará gigantesco e para nós humanos será muito trabalhoso, por isso a existencia de PlayUbins (visual). Alen de que futuramente play.ubin se tornará diretamente bits oque sera dificil visualização.

muito bem apresento aqui então a sintaxe minima para a primeira versao, ja dizendo que tenho a sintaxe mais avançada, porem presciso apresentar apenas a basica para facilitar o entendimento inicial:

@LOAD:
#aqui declaramos os Ubins e MUbins a serem utilizados.(a ordem não importa)

@EST:
#aqui são declarados os dados referenciais estáticos.

@COMP:
#aqui são declarados os dados referenciais compartilhados.(fará mais sentido no futuro)

@CPU_1: 
#_1 indica róde na cpu1, se quiser pode fazer tambem @CPU_5!_1 ou @CPU_5!_? que significa rode na cpu5 se não existe rode na 1 ou ? = qualquer cpu disponivel.
#aqui montamos os Ubins e MUbins desejados na ordem desejada.


então fiz:

@LOAD:
Ubin.start, Ubin.exit, Ubin.print, Ubin.S1, Ubin.S2

@EST:
@COMP:
@CPU_1:
start -> S1 -> S2 -> print -> exit


simples, porem não se empolguem, este código é inicial, simples para começar, porem como eu disse vai exigir mais semantica. porem para iniciar esta ótimo.

agora vou explicar oque cada Ubin faz:

start Ubin que inicializa o processo, neste caso 1 só.
S1 Ubin que tem entrada (0) faz a soma de 2+3 ja predefinidos internamente, e retorna 5 na saida[1]
S2 Ubin que tem entrada (1) faz soma input(1)+5 com saida[1]
print Ubin que joga na RAX e RMI lê entregando resultado no terminal.
exit Ubin que finaliza todo proscessamento.

----------------------------RMI ( Runner Minimo Inicial )-----------------------

RMI prepara as dependencias e monta o estado inicial do programa na mochila disponibilizada.

ele é responsavel por:
ler play.ubin e montar tudo. depois de tudo feito RMI fica parado, quem roda mesmo são os binários ja encadeados.

então enfrentei o primeiro problema: 
antes mesmo de fazer o RMI funcionar identifiquei que precisava padronizar entradas e saidas dos MU/Ubins. então fiz uma ABI minima.

antes de continuar preciso explicar que eu ia mesmo fazer a programação dos Ubins byte a byte, no entanto vi que isso iria me atrazar muito o proscesso, então subi para ASSEMBLY, pois ainda tenho controlhe sobre a maquina, e ganho velocidade de produção. ainda estou sozinho fazendo este projeto entenda.

então precisei estudar um pouco de NASM. defini algumas coisas:

RAX = entrada1 e saida1 de Ubins
RBX = entrada2 e saida2 de Ubins
RCX = entrada3 e saida3 de Ubins

R14 = retorno forçado
R15 = usado para salto, pode ser usado dentro de Ubins no entanto não serve de entrada nem de saida.

@EST inicialmente só servirá para alterar os imediatos dos Ubins, mais futuramente será convertido para bytes como EST.bin provavelmente por PlayUbins visual.

ai estava eu fazendo os Ubins e percebi:
e agora como posso alterar os imediatos em tempo real? digo, se tenho um valor de entrada escrito dentro do Ubin, como posso altera-lo, sem precisar refazer o Ubin?

então apos pensar em varias possibilidades decidi fazer assim: 
precisei desenvolver outro tipo de Ubin, o chamo de IUbins

veja o ex do IUbin rax.bin:
mov rax, 0xFFFFFFFFFFFFFFFF ;sentinela

então quando eu quero por ex fazer uma soma de 2 numeros eu posso usar rax e rbx como entradas o codigo ficaria +- assim:

@CPU_1:

[1]->(0) start [0]->(50) rax [1]->(30) rbx [2]->([1],[2]) soma [1]->(1) print [1]->(0) exit.

isso tambem resolve o referencial para @COMP e @EST.

perceba que em soma:
([1],[2]) soma [1] se eu fizer invertido ([2],[1]) soma [1] eu teria que criar outro IUbin chamado a-b.bin que inverte os valores de rax e rbx, tambem teria que adiciona-lo no código:

@CPU_1:

[1]->(0) start [0]->(50) rax [1]->(30) rbx [2]-> a-b [1,2]->([1],[2]) soma [1]->(1) print [1]->(0) exit.


isso que falei anteriormente é um adiantamento, mais vou mostrar oque realmente fiz como prova de vida de Ubins:

------------------PROVA de VIDA UBINS----------------------
antes de tudo precisava de debug então ja comecei bem:

apos uma semana estudando bastante, sofri bastante, mais consegui. fiz um codigo teste1 em assembly que era capaz de printar no terminal o resultado de rax.
quando resolvi este problema, então montei o RMI minimo, transformei o meu programa teste1 em teste1.bin e fiz RMI executa-lo. aqui ja vi que oque eu estou desenvolvendo vai dar certo, então fui realmente tomar prova de vida de Ubins:

primeiro criei Ubins basicos minimos:

s1.bin		-> soma 2+3 estes numeros ja estão embutidos internamente

s2.bin		-> soma a saida de s1 + 5

start.bin 	-> aqui eu precisei pensar um pouco, estava dando problemas de segfault, descobri que era alinhamento start serve pra isso e tambem zera os valores de entrada e saida rax, rbx e rcx

exit.bin	-> um simples retorno para quem chamou o código completo = ret

print.bin	-> o mais dificil de todos, me custou muito esforço, eu fiz o mais simples possivel, ele imprime na ordem real da memoria ram (imprime ao contrario) e os caracteres são da tabela ASCII 0x40, eu não entrarei em detalhes sobre isto, ASCII não será mais util para Ubins futuramente.


apos ter feito meus Ubins fiz um novo RMI, ele cria um buffer, carrega ubin por ubin, na ordem correta e depois que tudo esta unido joga ponteiro RIP para la.(lembrando que SO é quem manda, ou seja eu só solicito com syscall, no futuro isso não será mais nescessário)


montei da seguinte ordem:

start -> s1 -> s2 -> print -> exit

e foi perfeito, funcionou sem erro, o resultado era exatamente o esperado essa é a prova real que Ubins funciona, estou disponibilizando agora RMI1 e RMI2 + procedimentos a serem feitos, caso quiserem testar tambem.

para obterem resultados diferentes na saida podem alterar apenas s1.bin ou s2.bin sem nescecidade de recompilar RMI. só é nescessário recompila-lo se quiser criar montagens diferentes, mais lembre-se de preservar start como primeiro e exit como ultimo.


-----------------MetaDados.Json-----------------
o conceito de metadados é inicialmente para que em PlayUbinsVisual possamos saber com oque estamos trabalhando, e tambem facilita para montagem do arquivo play.ubin. dentro de cada Ubin só existem bytes lógicos então para informações: ou processamos em tempo real, ou mantemos a ideia de metadados. por enquanto não estou utilizando-o, e vou evitar usar. quando Ubin alcançar sua forma funcional irei montar SO proprio minimo, e isso fará mais sentido diacordo aos proximos documentos. de qualquer forma se Ubins crescer nos SOs atuais Metadados ja esta moldado:

MetaDadosx86-64.json
{
    "Soma1" : {
        "arquivo"   : "S1.bin",
        "versao"    : 1,
        "cancel"    : 0,
        "inputs"    : [],
        "outputs"   : [0],
        "bytesize"  : 8,
        "descri"    : "soma 2+3 sem entrada, saida[1]"
        "dependencias" :{
        
        }
    }
    "Soma2" : {
        "arquivo"   : "S2".bin,
        "versao"    : 1,
        "cancel"    : 0,
        "inputs"    : [0],
        "outputs"   : [0],
        "bytesize   : [n],
        "descri"    : "soma entrada [1] + 5, saida[1]"
    }
}

Como podem perceber agora temos um metadados basico que permite RMI montar os Ubins corretamente, em inputs e outputs, declaramos o Hex real local, assim RMI sabe onde esta saidas e entradas de cada Ubin.

os nomes dos bytes-logicos Ubins futuramente serão apenas idex 1,2,3,4... porem inicialmente manterei nomes strings nos arquivos, para facilitar debug.

era minha primeira ideia utilizar metadados para informar ao RMI como monta-los, e onde estão os imediatos a se alterar, eu não iria utilizar IUbins eu ia fazer isso:

suponha s1:
BITS 64
mov rax, 0xFFFFFFFFFFFFFFFF -> sentinela
add rbx, rax

então eu ia declarar em metadados onde se encontra nos bytes do Ubin o offset(inicio) dos bytes que representam a sentinela. mais desenvolvi uma melhoria, pois meu intuito é não precisar de metadados. Por isso criei IUbins.

voltamos ao RMI -----------------------------------

RMI é necessário, porque ja estou construindo uma linguagem que ultrapassará oque temos hoje, nescessitando assim que Ubins possibilitem a criação de um novo SO(sistema operativo minimo), e tambem funcione hoje no sistema atual.

sistema de utilização RAM:
	diferente dos modelos convencionais, utilizaremos a memória de baixo para cima, ou seja, os dados a serem armazenados serão instalados na memória da base para o topo.
	isso é nescessário, porque o funcionamento que planejei exige isto:
	
----------MOCHILA------------

A mochila é um pedaço da memória ram que separamos para o prgrama. se quisermos abrir outro programa podemos montar outras mochilas, todas elas dentro do espaço maximo físico existente da RAM.

para montarmos as mochilas precisaremos da MP(MOCHILA-PRINCIPAL) que inicializa o modo 64bits do cpu e instala a primeira mochila na ram, este passo sera apenas conceituado aqui, pois inicialmente usaremos os SO's ja existentes, no entanto é importante e crucial eu ja deixar o funcionamento completo, não vou entrar em detalhes muito muito tecnicos aqui sobre MP, porem:

Ordem de montagem na RAM por MP:

	1.1- determina base da RAM(marco 0 da ram util)
	1.2- inicia 64bits na CPU.
	1.3- transfere do HD para o TOPO da RAM todo o MP
	1.4- lê regras internas.
	1.5- lê configurações.
	1.6- lê Mochilas a serem instaladas na ram ao inicializar.
	1.7- inicia proscesso de instalação da primeira Mochila
	
Agora iremos montar a primeira mochila, imagine que esta é um SO feito por MU/Ubins, ainda explicando sem muitos detalhes:

	2.1- MP lê metadados da mochila.
	2.2- separa espaço na ram minimo requerido pela mochila(esse espaço agora se chama F-RAM.
	2.3- prepara a RAM(inteira) para trabalhar da base para topo e abre a mochila.
	2.4- instala o RMI e metadados da mochila na F-RAM(apartir daqui RMI trabalha). 
	2.5- MP se auto remove da RAM.

Apartir daqui podemos considerar que RMI funciona em qualquer lugar, ainda que seja nescessário refaze-lo para cada arquitetura de CPU, RMI terá o mesmo efeito:

	3.1- RMI lê metadados da mochila, inicia instalação no espaço da F-RAM da base para o topo.
	3.2- chama arquivo play.ubins do HD e joga no topo da F-RAM.
	3.3- lê Play.ubins. durante leitura:
	3.2- instala EST(estaticos) = @EST na base da F-RAM(encima do RMI)
	3.3- instala COMP(compartilhados) @COMP_1, @COMP_2 etc... (encima de @EST)
	3.4- monta CPUs (@CPU_1, @CPU_2 etc...) encima do ultimo @COMP_?
	    3.41 aloca @SIN para topo da F-RAM (isso aina não destuiu os dados de play.ubins, mais irá)
	3.5- inicializa ponteiro encima do ultimo @CPU_?
	3.6- programa ja esta em funcionamento.
	
os metadados falados aqui são diferentes, estou falando de metadados de MOCHILA, não metadados de Ubins,
Agora que ja temos uma ideia do funcionamento, podemos dizer que:

-RMI serve para preparar/instalar o programa na F-RAM.
-@EST são referencias do programa, e são imutaveis.
-@COMP_? todos os compartilhados são imutaveis.(trate compartilhados como variaveis de uma linguagem de programação comun)
-@CPU_? todas cpus são imutaveis.

agora voces tem algumas duvidas:

1- porque as "variaveis"=@COMP_? são imutaveis?
	partindo do principio que MU/Ubins são automelhorados com uso de IA, precisei desenvolver uma nova forma de tratar variaveis.
	pense da seguinte forma:
	    as variaveis do programa no nosso caso só servem para inicializar o sistema, quando os @CPUs funcionam, eles usam apenas o resto da F-RAM que sobra pra cima, então cada @CPU_? inicia completas, porem quando vão alterar algum dado utilizam uma especie de cópia para parte livre de F-RAM.
    	RMI sempre sabe o seu limite maximo de F-RAM, então ele sabe ate onde pode ir, e onde esta a base util.

2- aonde quer chegar com isto?
	quando iniciar o proscesso de introdução IA em algum programa feito por MU/Ubins(PlayUbins). tudo ficara claro. mais ja adianto, IA será acoplada durante a instalação de RMI, e ela poderá alterar "variaveis"=estaticos, em tempo real, ela poderá auto ajustar o programa, e se quebrar simplesmente volta ao estado anterior, sem precisar reiniciar o computador. isso permite que IA erre sem muitos danos.
	outro detalhe é que apartir do primeiro programa(uma especie de SO minimo) podemos tambem montar outras mochilas cópias alteradas da original, permitindo testes exemplares, em casos de erros, simplesmente fexamos a mochila ruim, e voltamos a original, em casos de melhorias, podemos salvar como uma nova mochila, ou substituir a antiga. 
	
Assim temos um programa que pode se auto melhorar, e tambem IA que pode compreender melhor o comportamento do programa, devemos lembrar que sendo assim em cada usuário um resultado diferente virá, por isso será de suma importancia contar com eles para permitir que IA disponibilize relatórios ao BDD aonde uma IA mãe ajusta detalhes e encorpora melhorias.(deixo bem claro que em qualquer programa a ser feito por MU/Ubins, a liberdade é total do usuário, ou seja ele pode ter a privacidade total se assim quiser).


Agora vou deixar mais detalhado aqui outras metodologias que venho desenvolvendo, antes de entrarmos na proxima parte pratica.

--------------------ASSEMBLY------------------------

para inciar o processo de materialização deste projeto, precisei utilizar o recurso ASM, com ele consigo extrair os binários representativos para cada Ubin.

--------MULTI-BANDA-REGS---------------:

CPU proscessa 8 bytes mesmo que o conteudo real seja apenas 1 bytes pois no caso utilizamos Ubins com imediatos fixos de 64bits, por isso apresento o MULTI-BANDA-REGs

A ideia é que nos proscessadores, utilizamos registradores, em súma, a memoria RAM pode ser menos utilizada, ja que o sistema Ubins funciona na LINHA, sendo assim percebi que muitas das vezes, utilizamos para 1 ciclo do proscessador apenas alguns poucos bits, então temos uma grande perca de energia. pensando nisso imaginei que poderia ser possivel tratar vários dados dentro do mesmo registrador, (percebi que isso ja existia em pequena escala por ex no sistema ASCII).

um registrador RAX possui 64bits, se eu preciso tratar um dado pequeno como um número por ex, ele não vai consumir todos os 64bits, sendo assim:
podemos mudar nossa perspectiva de forma que um registrador possa levar por ex 4 informações e tratalas ao mesmo tempo, então um registrador teria 16x4 bits, apesar de termos menos informações em cada parte (64 para 16), ganhamos mais tratamentos de dados por ciclo, no entanto ainda há detalhes a serem resolvidos:
	se temos em 1 registrador 4 informações, trata-las pode ser um problema, pois não ´ha como mudar apenas 1 dado interno facilmente, no minimo teremos que usar controlhe por mascaras, então pensei em minimizar isto construindo um OFFSET de CICLO, ou seja quando tivermos 4 ciclos, o primeiro dado da parte baixa de RAX ja sofreu 4 proscessos, e o segundo dado da parte alta 1 proscesso, essa defasagem possibilita uma metodologia de montagem mais flexivel.
	ainda assim temos alguns outros problemas, MULTI-BANDA-REGS, pode funcionar muito bem, porem para finalizar a informação, deve ser descompactada, pois todos os periféricos hoje dependem exclusivamente da convenção atual, que é utilizar byte a byte = 8 - 8, sendo assim se quisermos enviar para monitor pixels proscessados por MULT-BAND-R teremos que readequar os dados e isso tem que ser menos custoso.

importante dizer que IA lida muito bem com isso ja que é questão de matemática.
	

a ideia seria:
rax então agora será visto como 1 barriu, que enche 4 copos, a cada instrução eu trato os 4 copos diferentes, cada copo tem um valor especifico. mais a magica só funciona se eu conseguir manter os proximos comandos tratando todos os 4 ao mesmo tempo. então eu vou tratando tratando ate que eu precise de um dos copos como resultado, então eu o removo de la e coloco em outro barriu, e vida que segue, continua tratando todos os dados.

agora vem a segunda parte:
a primeira parte se eu conseguir resolve-la então virá a parte principal que é juntar os pedaços para converter para alguma interface como por ex video, pois o video só aceita um sistema padrão, sendo assim eu sou obrigado a montar os pequenos copos para um buffer e assim conseguir enviar para video os pixels processados, por ex. 

o maior desafio será converter os resultados finais para o formato legivel em video(tela/monitor), conseguindo isso, o resto é facil, ou seja, isso é questão de compactação de dados e descompactação.

MULTI-BANDA-REGs sendo bem aceito e muito utilizado pode influenciar a construção de novos aparelhos de video dos quais compreendem os dados sem a nescecidade de compactação/descompactação, tornando-o ainda mais agil.


para casos onde um dado de 16bits estrapole, poderemos desenvolver duas tecnicas:
1- adicionar em um outro registrador paralelo uma progreção do estrapolamento
2- adicionar uma chave de compactação e compactar os dados novamente antes de estrapolar.

alem disto vale lembrar que ao estrapolar o byte acima será alterado tambem, e isso faz parte do comportamento previsivel, se bem implementado poderemos tirar proveito disto.

---------ENTRADAS / SAIDAS de MU/Ubins--------

o principal nescessário para o funcionamento de MU/Ubins são suas entradas e saidas.

para que isso funcione iniciei uma ideia(ainda esta em fase de desenvolvimento):

RAX é a entrada 1, portanto tambem a saida 1.

queria fazer com que foce possivel construir MUbins utilizando Ubins, porem tinha em mente poder acoplar Ubins dentro de outros Ubins, e percebi que isso não será facilmente aplicavel, Ubins são conjuntos de bytes, então precisamos saber em quantos bytes devemos encaixar o proximo Ubin. Como eu encontrarei o "ponteiro" exato?

asm:

soma.bin(um Ubin de soma + 10 constante imutavel):

;-> entrada normal
ADD RAX, 5 ;adiciono 5 em rax. (este ubin pega da entrada um numero e acrescenta 5 e depois acrescenta + 5)
;(2)-> aqui fica entrada extra
ADD RAX, 5 ;adiciona +5
;-> saida final

sei que esse exemplo é muito bobo, mais é nescessário. então agora este código em asm será convertido para bits. porem como vou encontrar a entrada (2)?

é dificil esta implementação pois estou no nivel ASSEMBLY, então fico dependente do NASM, se eu estivesse em byte a byte isso não seria problema, mais como disse anteriormente não posso atrazar o desenvolvimento do projeto.

então descidi que para fabricação de MUbins iremos utilizar encadeamentos de Ubins em linha.
este método não irá engessar o projeto, visto que MUbins podem acoplar outros MUbins com mais facilidade, pois entradas e saidas internas de MUbins podem ser mais facilmente alteradas doque Ubins.

então Ubins acoplados em linha com outros Ubins se tornam MUbin
MUbins podem ser encadeados em linha com outros Ubins/MUbins
MUbins podem tambem acoplar dentro de outros MUbins, porque possuiem offsets internos conhecidos.




um exemplo pode explicar muito mais: imagine que fizemos este arquivo play.ubin usando o programa PlayUbins.
=====================================================
arquivo play.ubin: #linguagem ainda em desenvolvimento.

@LOAD: #carregar ubins
soma.bin, emit.bin, start.bin, exit.bin, print.bin

@EST: #estaticos
#[1]=int [2]=float [3]=str
[1]-{
	[1]-> 50
}

@COMP_1: #compartilhavel. bolsa1 de variaveis compartilhadas(variaveis imutaveis=constantes ja visto anteriormente, montada embaixo dos @CPUs)

@CPU_1: #programa será executado na cpu1

[1]->(0) start [0]-> (@EST[1,1]->)emit[1]->(1,(1,|)soma[1]->)soma[1]->(1) print[1]->(0) exit

#pode ser representado assim tambem:

#[1]->(0) start [0]->(@EST[1,1]->) emit [1]->
#	(1,(1,?) soma [1]->) soma [1]->
#	(1) print[1]->(0) exit

@SIN_cpu: #sinais para interação entre CPUs

@SIN_glob: #sinais globais é montado no topo da RAM pelo MP(mochila-principal) e serve pra mochilas se comunicarem(veja como bolsas laterais de uma mochila de verdade) MP devolve um ponteiro para RMI saber onde esta SIN_glob. 

#NOTA IMPORTANTE: @SIN_glob, ainda esta em fase conceitual, pois pode provocar erros se muitas mochilas estiverem instaladas.

==================================================

agora podemos simular o encadeamento de 2 Ubins soma, se vicemos a mochila ja instalada na RAM com CPU_1 ja compilado por RMI:

NOTA: como Ubins não podem ser acoplados dentro de outros Ubins faremos da seguinte forma:
;na representação asm:
;na parte da entrada do primeiro Ubin.soma


ao invez de criarmos soma1:
add rax, 5 
#e deixarmos este local como espaço para acoplar outro Ubin
add rax, 5

faremos um unico Ubin desta forma:

add rax, 5

sendo assim agora podemos encadear em linha os Ubins para construir um MUbin, este exemplo é simples porem é poderoso quando tivermos Ubins mais complexos.

agora como podemos ver o conceito se torna realidade. há parametros a serem estabelecidos para evitar erros, porem o primeiro passo ja foi dado, e isso ja é por si só um avanço muito importante.


----------TIPOS de UBINs---------------
um Ubin com muitas entradas é diferente de Ubin com entradas de encaixe. eu terei sim Ubins com multiplas entradas RAX RBX etc... e com saidas tambem RAX RBX etc... porem se no meio eu precisar engatar algo, eu pego ubins menores equivalentes e encadeio manualmente, ou seja da trabalho no inicio, porem depois de feito o layout do MUbin em questão fica facil, eu só chamo ele. e no final la na frente IA o trasnforma em um Ubin completo

dados de entradas e saidas devem ser referenciais. possivel alterar o comportamento de um Ubin. internamente os bits que representão por ex:

MOV RAX, 5 ;adicionar em RAX o decimal 5(sera convertido para bits) se isso existe dentro de um Ubin ele é imutavel 5 ja é uma constante interna do Ubin, alguns poderão ser assim, porem alguns terão de usar referencial para @EST estaticos que podem ser definidos, dentro de PlayUbins.

e se quisermos criar um Ubin.soma2 que aceite 2 entradas? facil:

ADD RAX, RBX ;se rax=(1)#entrada 1 e rbx=(2)#entrada 2 ja adicionamos 2 em 1 assim ele ja devolve a soma em rax. podemos tambem fazer com que soma2 tenha duas saidas, uma o resultado em rax e a segunda saida com o mesmo valor de entrada que veio de RBX e continua passando. porem para não elevar a complexidade agora, vamos averiguar outro problema.

percebemos aqui que Ubins são reais, é possivel fazer, é possivel controlar, no entanto ainda temos alguns problemas primitivos. Vamos ainda continuar vendo somente numeros inteiros, sendo assim pensemos:

como eu consigo enviar um numero para RAX? ou RBX?. Quando temos em Ubin.soma um numero 5 interno é facil. mais agora quando temos que colocar um número na entrada tudo fica um pouco mais complexo:

pensei em varias possibilidades:

1- podemos criar um conversor de ASCII para bytes, e depois de ler play.ubin ja sabemos qual numero(que agora é byte) vai em qual Ubin. RMI avalia o metadados do Ubin especifico, encontra o offset de entrada para rax e altera dirétamente nos bits do Ubin, durante a montagem. isso funciona, mais é complicado.

2- podemos criar um interpretador de play.ubin que vai transformar todos numeros(pense só em inteiros por hora) em bytes, vai alocar junto aos @EST e terems que criar um Ubin.emit real que coleta da F-RAM via RSP os bytes relativos de entrada ex:

ubin.emit: MOV RAX, [RSP]#seria +- isso. porem é lento, e se tiver muitas entradas teremos muitas chamadas a ram. isso é pessimo.

3- pelo offset de binários, podemos percorrer um Ubin por completo, byte a byte, sendo assim, podemos alterar diréto naquele numero inteiro de entrada:
ex soma.bin:

add RAX, 5 #este 5 esta em algum lugar no binário de soma.bin, se encontrarmos podemos alteralo, mais existem problemas se não seguirmos regras. 
RAX é 64bis, então ainda que estamos enviando sómente um numero 5 que apos compilado pelo nasm teremos 0b101 3 bits apenas.(lembre-se do MULT-BAND-REG da dó gastar 64bits para usar 3 bits só.) acabamos por gastar 64bits fixos, logo 8bytes. 

1 pergunta:
	1- será que realmente ao converter um código asm para bin, mantem 64bits pra representar o numero 5?
e a resposta é não, quando adicionamos um imediato em ASSEMBLY representando como decimal = 5 NASM muda o padrão de bytes para representalo, e provavelmente irá tratalo como 16bits. por isso desenvolvi a sentinela, ela é declarada em HEX = 0xFFFFFFFFFFFFFFFF, isso obriga ao NASM a manter os 64bits durante a compilação para binario, assim meu Ubin fica previsivel, uma minima desvantagem é que ele ocupa mais espaço, pois se utilizarmos apenas numeros pequenos não precisariamos de tantos bits, no entanto como o objetivo final é que entradas sejam dinamicas, e possam ser alteradas em tempo real, fui obrigado a tornar Ubin com bits fixos de entrada = 64bits. este é o real motivo de que @EST: aceite ate 64bits de dados por estatico("variavel constante inicial").

outro detalhe que me fez seguir este procedimento foi que para qualquer alteração de imediatos que ocupem tamanhos diferentes teria que recompilar tudo dinovo devido ao offset mudar, se estivermos programando em tempo real com o programa vivo ficar esperando recompilar niguem aguenta


até então temos este sistema:

x.bin montado por RMI junta + y.bin e assim vai. depois bota pra executar, ai tudo vai parecer um unico código. ate ai tudo bem, da certo porque cada binário é completo por si só. 

-------------------------aonde quero ir agora------------------
no entanto quando se trata de eu enviar um numero para a entrada de um y.bin com o programa em funcionamento tenho algumas opçoes:

1- referenciar dentro do y.bin via RSP para que ele busque o valor na ram. (isso é complicado porque ponteiro de F-RAM vai mudar de lugar toda hora, tamanho dos numeros podem exigir + - bytes)
2- no RMI ao juntar os Ubins eu posso atravez do metadados declarar o offset exato de onde se encontra a entrada para este numero 5 (supondo que seja aquele soma.bin ADD RAX, 5 -> aqui seria o offset), alterar o valor pelo valor declarado em play.ubin convertido para bytes, e caso ele estenda o tamanho, teria que reorganizar todo o offset subsequente, alem de haver riscos de quebrarar tudo.
3- criar milhoes de emit.Ubin cada um com um valor fixo interno ja emitindo o inteiro desejado, mais isso é impraticavel, desconsiderar.

lembre-se que Ubins vão funcionar dentro de uma mochila. a minha intensão era que IA criase outra mochila duplicada, rodaria ela alterando os valores ate achar resultados melhores. porem isso não vai ser tão util(mais é interessante lutar por esta ideia tambem). ja que o principal papel da IA é alterar o binário em sí.
o buraco é mais embaixo doque parece, se eu tornar Ubin com imediatos fixos porem alteraveis antes da compilação final no RMI, ainda sim temos problemas, eu precisaria utilizar variaveis no lugar de imediato, e para compilar em assembly assim:

BITS 64
ADD RAX, [teste]

daria erro. porque ele espera entender de onde vem esse [teste]. ele teria que vir de section .data, ou .bss

PRIEMRIA COISA:
	desenvolver uma forma de modificar os bits de entrada em rax. para isso vou utilizar um Ubin chamado EMIT.bin(emitirbits)

1- primeira possibilidade:
	utilizar RMI relativo. eu declaro na programação em assembly antes de compilar o Ubin especifico para binario, uma "variavel"(constante) interna no documento com tamanho 2gb+- apartir dai este Ubin.bin fica tendo o código em sí que vai rodar na CPU, e a constante que vai ser jogada em RAX. no metadados deste Ubin eu coloco o offset que marca onde esta o final do código de maquina, e o inicio da "variavel". então RMI ao montar o Ubin utiliza deste offset, para alterar os bits relativos a "variavel". 
	problemas reais deste conceito:
	1- para alterar alguma variavel é nescessário reiniciar com RMI para retrabalhar offsets de montagem total.
	2- mesmo que a variavel seja maior que 64bits, se um Ubin utilizar sómente 1 entrada como RAX só aceitará 64bits.
	3- funcionamento simples, porem se torna complexo, devido a nescecidade de utilizar no código Ubin JMP(operação que salta partes do documento binario) que serve para impedir CPU de ler a variavel, ja que CPU só lê comandos. para cada tamanho de variavel JMP é diferente, sendo assim eu teria que ir mais a fundo com RMI e faze-lo compreender JMP para alterar durante a montagem não só a "variavel" em sí como tambem o salto que CPU deve fazer apos o código. isso se torna complexo e atraza o desenvolvimento de UBINS.
		
2- segunda possibilidade:
	utilizar RSP(ram) como armazenamento de "variaveis" para entrada dos Ubins.
	problemas:
	1- lentidão, é um defeito natural pois memoria dos dados esta distante do CPU.
	2- endereçamento, se eu aumento uma variavel de tamanho ex 32bits -> 64bits substitui 32bits de dados que eram utilizados para outro Ubin, obrigando a existir um gerenciador que antes de trocar os dados que eram 32bits para 64bits, realocar todos os outros dados 32bits para cima. ou utilizar metodos ainda mais lentos, como para cada execução de Ubin, RMI deixa preparado em RSP com ponteiro fixo a variavel, e no proximo Ubin, RMI troca a variavel de RSP pela proxima.
	positivos:
	1- torna Ubins totalmente manipulaveis em tempo real, permite trocar imediatos internos de cada ubin com facilidade, em pleno funcionamento. isso é exelente para IA aprender a lidar com dados, e assimilar com os comandos de maquina.
		
3- terceira ideia:
	Ubins não precisam ter variaveis com tamanhos alteraveis. cada Ubin tem um comportamento (N entradas e N saidas), tendo isso em mente se temos por ex um Ubin com 2 entradas RAX e RBX e 1 saida RAX, sabemos que o maximo de bits de entrada aceitavel são 128bits. e ao final sairá 64bits. então este Ubin pode muito bem ter entrada fixa maxima de 128bits. esta estrategia torna as 2 opções superiores optimizaveis:
	
	1- na possibilidade 1 podemos usar JMP fixo, isso faz com que RMI só precise alterar os bytes do Ubin, sem alterar o tamanho real dele, RMI é obrigado a reiniciar tudo, ainda que temos o mesmo tamanho e offsets esteja intacto, os bits são diferentes, portanto nescessário reconstrução, talvez haja uma possibilidade de alterar em realtime, mais torna o programa muito fragil, qualquer deslize quebra tudo.
	
	2- na possibilidade 2 podemos mapear a ram para cada emit.bin existente no programa, e teremos bytes maximos fixos, ainda continua lento.



SEGUNDA COISA:
	multbandregs é uma forma de se utilizar os Ubins. sendo assim só precisamos criar um EMITBAND4.bin(emitir 4 bandas 16bits), continuar usando os Ubins64bits normalmente, e ao final dos processos fazer UNIBAND4x16(une as 4 bandas em um 64bits. IMPORTANTE: estes unibands podem reorganizar os bits das 4 bandas para se tornar um dado de 64bits, como tambem terá um UNIBAND que pega sequencias de 4 ciclos em cada banda para montar 64bits da mesma banda, e etc..)
	entender que multbandregs é só um paradigma diferente, que busca aproveitar todos os bits do cpu por ciclo, tratando varios dados de uma vez.


---------STRING------------
String nada mais é doque apenas bits, o CPU só entende bits, então pela tabela ASCII cada caractere ocupa 1byte = 8bits, na verdade 7bits mais usamos em registradores 8bytes cada char.
ou seja na verdade String é oque nós determinamos que é. na verdade os bits podem ser somados subtraidos multiplicados, podemos fazer oque quisermos com eles, sendo assim é questão de convensão, e a tabela ASCII é uma delas. 
para interpretarmos como string temos que pegar a sequencia de bytes e enviar a um interpretador de strings. no caso por enquanto utilizaremos o print.bin.

frases maiores doque o suportado por RAX ou XMM ou AVX, exigem buffer(é a alocação de bytes na memoria ram de forma ordenada, no caso de Ubins trabalha de baixo para cima então adicionamos os bytes em subida.), no entanto não vamos focar nisto agora, pois a ideia é outra.

VEJA AGORA OQUE VAI MUDAR TUDO:

strings são formas 2d/3d que representam algo, logo estas não exigem proscessamento. oque acontece de verdade é que strings apenas são formas/formatos/pixels. sendo assim a unica coisa que CPU precisa fazer é movimenta-los de HD para RAM de RAM para video, e tambem escalonar ou encolher.

sendo assim podemos entender que não existe calculos para strings. ex:

vamos imaginar a letra A, para que ela apareça na tela, devemos enviar um conjunto de bits ja predeterminados, de modo que o monitor(tela) possa desenha-lo, podemos tambem entender que uma pintura, fóto, desenho ou qualquer outra coisa, tambem possui o mesmo comportamento, oque muda é, a quantidade de bits exigidos para o representar.

tendo isso em mente sabemos que para uma letra aparecer na tela, podemos criar o molde dela em bits. este molde pode ser tanto fixo, quanto tambem um vetor.
1- se fizermos um molde fixo, então sabemos o formato exato da letra e tambem seu tamanho a ocupar na ram.
2- se fizermos um molde vetorizado, então sabemos que o formato deve ser preservado, no entanto seu tamanho na tela poderá ser alterado, isso é poderoso porem para podermos fazer isso funcionar teremos que exigir proscessamento, e isso complica as coisas.

Mais e se eu diser que temos uma terceira opção meio termo entre as 2.
O meu projeto inicial era o P3X, então surgiu Ubin, e agora percebo que P3X irá resolver os problemas de Ubin, podemos utilizar o renderizador de P3X, e tratar strings como objetos3D. ou seja oque eu proponho é que não há mais 2D.

sendo assim trataremos uma letra/imagem/foto/desenho etc.. da mesma forma que tratamos modelos 3D em P3X.
tudo é atomos. então agora fica mais facil tratar strings. sendo assim caracteres serão apenas +1 modelo 3D de P3X.


lembrar que letras, numeros, imagens, qualquer coisa que será representada na tela nescecita ser representado por pixels, sendo assim deverá ser tratado com MULBANREGs.

por isso em RMI4 ou RMI5 iniciar o tratamento de @EST como estaticos de proscessamento e @MULBANREG como dados de representação visual.

isso muda tudo, pois IA agora podera entender facilmente as coisas, pense um pouco sobre isto. se temos agora uma divisão clara entre oque é proscesso e oque é representação visual.

se para tudo que aparece na tela agora é representado como um conjunto de átomos utilizando P3X. IA agora poderá entender o comportamento de qualquer linguagem humana, tanto letras, palavras, imagens etc... pois tudo tem apenas uma base fundamental. isso é muito, muito poderoso.




-------NUMEROS NEGATIVOS--------
pra fazer numeros negativos então eu posso fazer uma especie de referencia que parte o maximo comportado por dq pela metade, assim da metade prabaixo começa de 4999999 ate 0, e pracima 5000000, ate 9999999.
ok sempre usarei decimal ou hex.
me surgiu 2 duvidas:
Conceitualmente isso é exatamente complemento de dois.
A diferença é que o hardware já faz isso automaticamente.


-------NUMEROS FLUTUANTES-------






--------------MOTOR de PARTIDA-----------------
tem o intuito de incializar a primeira mochila, estou adiando esta parte pois primeiro faremos Ubins fucnionarem em SOs ja existentes.


---------montagem pelo RMI mochila mae------------
considere como exemplo não como Ubins são de verdade:

eu salvo as variaveis como var.bin, salvo as constantes como const.bin, salvo o pacote completo de sequencia de ubins em ubins.bin, dai eu junto tudo na seguinte ordem:

const.bin -> ubins.bin -> var.bin
sendo assim a unica coisa que cresce é variaveis. então elas ja podem ir escalando pra cima na ram naturalmente. as constantes e os ubins são estaticos então podem ficar no começo da alocação permitida na ram. claro que este conceito ainda é minimo. porem acho que fica bem esclarecido.

mais preciso saber. se um pc tem a ram eu consigo encontrar a metade dela?. vamos supor que eu faça um mini loader ele carrega roda na maquina e muda pra longmode 64bits. dai eu to no meu SOminimo. mais ainda assim eu quero por ex partir a ram no meio, eu consigo fazer isso pra eu poder carregar 2 mochilas(pacotes montados de const+ubin+var). quando eu falo partir no meio digo o meio efetivo real(depois das partes da ram que são exclusivas para funcionamento minimo). a ideia é repartir a RAM dinamicamente diacordo a nescecidade, e construir F-RAM's para fornecer a mochilas.

A ram real não é continua, pois possui "buracos" quando chegar no estagio de construir a mochila mae (RMI especial para montagem de mochilas) irei aprofundar com mais detalhes, porem ja adianto que sera nescessário construir uma continuidade, montando um mapa virtual simples da ram, e depois separar assim o espaço desejado para fornecer F-RAM.

quando digo um mapa virtual, não estou dizendo que F-RAM será virtual. a ideia é que este mapa tenha apenas um apontamento referencial para a memoria real, ou seja não haverá memoria virtual como SOs usam atualmente, isso seria uma limitação se foce implementado antigamente onde PCs tinham 256Mb de ram, mais hoje no geral capacidade de RAM não é mais um problema, alem do mais o sistema Ubins são extremamente compactos.

apesar de MU/Ubins lidar com memoria real, ainda sim não há riscos dirétos de comprometimento (riscos de uma mochila invadir outra), pois durante montagem da mochila, regras fortes impedem que ela utilize valores diferentes do mapa F-RAM adquirido.






eu posso fazer algo ainda mais interessante.
eu faço assim:
const.bin + var_base.bin + Ubins.bin + livre.bin:

então agora as variaveis de start, são apenas para inicialização do programa para torna-lo funcional. e quando eu quiser alterar alguma coisa vou iniciar alterando em espaço livre.bin(que não existe.bin é só a representação da parte da memoria livre para o programa mexer), isso torna o programa ainda mais confiavel. se ele quebrar na ram livre ele busca o estado inicial na var_base e joga dinovo na livre. isso é excelente.

const.bin | var_base.bin | ubins.bin | livre.bin

Tradução arquitetural correta:

const.bin → estado imutável absoluto
var_base.bin → estado inicial conhecido (baseline)
ubins.bin → código puro
livre.bin → working set / estado mutável



e eu ainda posso copiar a mochila alterada para outro espaço na ram. se eu quiser alterar algo na var_base.bin então eu só copio a mochila para outra parte da ram com os novos parametros e com ponteiros rearanjados. dai se quebrar quebra fóra da mochila principal. isso torna o programa auto atualizavel muito simples, e IA lida muito bem com isso.
o tamanho da livre é dinamico. pois se eu quiser rodar muitas mochilas tenho que poder roda-las. então oque acontece é que se um pc tem pouquisima ram ele vai poder usar apenas 5 a 10 mochilas. depende do tamanho do programa, se for um game que consome 2gb e o meu SO consome 64mb sobra pra mais poucas mochilas. é só criar um header para cada mochila(programa) contendo espaço livre minimo requerido. dai se o pc tem pouca ram para abrir o game o SO avisa que tem muitos programas abertos, encerra-os desejados ou automático, salva o estado deles se precisar no HD, e abre o game normalmente. e isso vai ser dificil acontecer. pois estamos na era onde ate pcs antigos tem ram aceitavel. meu pc msm tem 4gb, mais esta totalmente ultrapassado, o minimo hj é 8gb e da pra usar tranquilo.




o SUB RSP, 8 é pq a pilha cresce pra baixo certo?. porque no meu SO vai ser ao contrario então esse print seria ADD certo?

não pode existir push / pop sempre assumem pilha para baixo Eles não sabem da sua convenção
Consequência direta

nem:
sub rsp, 8   ; com semântica de pilha
Porque isso já embute a convenção “downward stack”.

Como fazer no seu SO (pilha para cima)
Você usa RSP como ponteiro manual, não como “stack register mágico”.
Exemplo equivalente ao print anterior:
; RSP aponta para o próximo byte LIVRE (pilha cresce para cima)

mov [rsp], rax     ; grava valor
add rsp, 8         ; avança a pilha

Depois, para “desempilhar”:

sub rsp, 8
mov rax, [rsp]

Aqui você está definindo sua própria semântica.

🔁 Comparação clara
Pilha tradicional (Linux, ABI SysV)
sub rsp, 8
mov [rsp], rax

Pilha crescente (seu SO / P3X)
mov [rsp], rax
add rsp, 8

O efeito lógico é o mesmo — a convenção muda.




mais então isso me permite ja utilizar do jeito crescente. pois é só convenção de software então farei assim. vou usar pilha crescente desde ja para que fique facil portar ubins. mais ainda tenho um certo duvida:

quando fazemos MOV [RSP], RAX, se rax é 8 porque ele não ja sobe o ponteiro de RSP naturalmente?, ou melhor dizendo se o ponteiro não sobe naturalmente deveriamos fazer:
ADD RSP, 8 e só depois fazer MOV [RSP], RAX. parece estranho. 

ate entendo parcialmente o funcionamento ou seja, jogamos os dados onde o ponteiro de RSP esta, porem se foce assim esse ponteiro de RSP ja contem algum dado?, parece que não, então se não tem nenhum dado quando eu for puxar algum dado de RSP sempre deverei fazer sub rsp, 1 pra encontrar os primeiros 8bits?. então toda vez que eu for lançar um novo dado eu tenho ainda que ADD RSP, 8?



Enquato estamos usando SO atual, no meu caso Linux, ele é quem determina e escolhe espaço da ram para min, no entanto ele fornece uma memoria virtual(pagina) esta pagina é o mundo dos Ubins, é o universo deles. isso não implica problemas futuros quando Ubins se tornarem mochilas reais, com SO proprio.

O RMI é o conversor de loader que inicializa no SOs de hoje em dia, e no futuro com SO proprio, simplesmente altero só ele.

======
as mochilas são programas, programas são estado vivo em memória, estado vivo em memoria é organismo computacional
======




A RAM real não tem direção Física, ele é apenas endereços, então eu posso modelar a forma de usala como quiser.
Qualquer endereço da ram pode ser acessado dirétamente, o problema é saber o endereço, por isso geralmente nos programas iniciamos de um endereço especifico e movemos o ponteiro com referencia a este endereço.


Inicializar bases no começo do código é obrigatório no meu caso.
sub rsp, 4096

PUSH e POP não funcionam para Ubins.
Exemplo simples:

; RSP = stack pointer custom
mov r15, 0x10000000   ; base

; push
mov [RSP], rax
add r15, 8

; pop
sub r15, 8
mov rax, [RSP]


A leitura da RAM real acontece de cima para baixo ate esbarrar no ponteiro, ou seja se eu tenho rax64bits, se eu quiser buscar algum dado da RAM o ponteiro fica parado e RAX pega os 64bits que estão acima do ponteiro, no entanto a leitura acontece de cima para baixo


---------------COMO FUNCIONA NO SO?--------------------------------------
chamada no terminal SO linux:
A única forma oficial de falar com o kernel é via syscall.
protocolo fixo
📌 Registradores usados
Função	Registrador
número da syscall	RAX
argumento 1	RDI
argumento 2	RSI
argumento 3	RDX
argumento 4	R10
argumento 5	R8
argumento 6	R9

Depois disso executamos syscall

oque é syscall:

ssize_t write(int fd, const void *buf, size_t count);

Tradução para assembly:
Coisa						Valor
número da syscall write		1
fd (stdout)					1
buffer						endereço da string
tamanho						número de bytes
🔹 
em Assembly (NASM) ex:
section .data
    msg db "Ola mundo", 10
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1          ; syscall write
    mov rdi, 1          ; fd = stdout
    mov rsi, msg        ; endereço da mensagem
    mov rdx, len        ; tamanho
    syscall

    mov rax, 60         ; syscall exit
    xor rdi, rdi        ; código 0
    syscall

RAX = 1 → kernel entende: write
RDI = 1 → stdout
RSI = msg → ponteiro da memória do seu processo
RDX = len → quantos bytes
syscall → CPU troca para modo kernel
Kernel:
valida memória
copia dados
manda pro driver do terminal
volta para user space
alguns registradores são destruídos (RCX, R11)

------------------------- F-RAM ------------------------------------

RAM principal sera reparticionada em varias partes, para montar uma nova mochila um programa principal lê metadados deste e o chama, dai RMI faz o resto.


no mundo atual, o problema numca foi memoria. problema é que abstração grande d+ ai os codigos ficam grandes d+, ubins é pequeno simples rapido e otimizavel por IA.

POSSIBILIDADE REAL DE: INSTANCIAR APENAS 1 UBIN DE CADA NA RAM, E CRIAR UM PONTEIRO QUE SALTA PARA EXECUTAR OS UBINS NA ORDEM DESEJADA, ISTO TORNA O CÓDIGO AINDA MENOR, MESMO SE FOR MUITO GRANDE.


mais portabilidade conforto bibliotecas é só por hora, depois vai ficar excelente, só todo mundo aderir que ja era.
andei pensando tambem questao da mochila.

eu posso fazer algo ainda mais interessante.:
eu faço assim:
const.bin + var_base.bin + Ubins.bin + livre.bin:

então agora as variaveis de start, são apenas para inicialização do programa para torna-lo funcional. e quando eu quiser alterar alguma coisa vou iniciar alterando em espaço livre.bin(que não existe.bin é só a representação da parte da memoria livre para o programa mexer), isso torna o programa ainda mais confiavel. se ele quebrar na ram livre ele busca o estado inicial na var_base e joga dinovo na livre. isso é excelente.



e eu ainda posso copiar a mochila alterada para outro espaço na ram. se eu quiser alterar algo na var_base.bin então eu só copio a mochila para outra parte da ram com os novos parametros e com ponteiros rearanjados. dai se quebrar quebra fóra da mochila principal. isso torna o programa auto atualizavel muito simples, e IA lida muito bem com isso.
o tamanho da livre é dinamico. pois se eu quiser rodar muitas mochilas tenho que poder roda-las. então oque acontece é que se um pc tem pouquisima ram ele vai poder usar apenas 5 a 10 mochilas. depende do tamanho do programa, se for um game que consome 2gb e o meu SO consome 64mb sobra pra mais poucas mochilas. é só criar um header para cada mochila(programa) contendo espaço livre minimo requerido. dai se o pc tem pouca ram para abrir o game o SO avisa que tem muitos programas abertos, encerra-os desejados ou automático, salva o estado deles se precisar no HD, e abre o game normalmente. e isso vai ser dificil acontecer. pois estamos na era onde ate pcs antigos tem ram aceitavel. meu pc msm tem 4gb, mais esta totalmente ultrapassado, o minimo hj é 8gb e da pra usar tranquilo.



@CPU_1:
[1]-> (0)s1[1]-> (1)s2[1]-> (1)print[1] -> exit
ou 

@COMP_1:
[1]-{
}-



voce tambem percebeu a magica? se temos 64bits e esse tanto de endereço virtual, tudo pode ser reinterpretado. isso ja é maior que a ram. temos ram ifinita dentro do proscessador. o unico problema é a interpretação. tratamos dados com 8bytes. isso é que sempre engasga tudo. mais posso repensar em algo menor, usar um rax como se fose um AVX de512. posso resignificar muita coisa. claro existem muitos obstaculos, mais ha possibilidade real de comprimir a representação reduzindo isso, eu consigo uma ram interna no CPU sem precisar mexer no hardware.


Um registrador de 64 bits pode representar:
um número
um endereço
um estado
um token
um identificador
um índice lógico
um “ponteiro simbólico”
👉 Tudo depende de quem interpreta.


-------------------- LITLE ENDIAN -------------
jogando stack base para usar Ubins dentro de SO linux RMI
section .bss
stack_base resb 4096     ; reserva 4 KB para a pilha

não fica invertido fica na ordem correta. eu trabalho com a ram de cima pra baixo. porque eu não uso PUSH/POP eu jogo dados diréto no RSP e coleto sem mover o cursor. e para coletar os dados utilizo o mesmo tamanho de registrador usado, isso naturalmente mantem a ordem correta, ja a leitura, se vicemos dirétamente na ram é de baixo pra cima.

MOV [RSP], 0x1122334455667788

eu incializo minha RSP e seto marco 0 para base.
SUB RSP, 4096

apartir dai ele vai colocar:
88 em 0
77 em 1

quando jogo bytes na [RSP]. o ponteiro continua parado.
dai pra eu ler é simples, não preciso mover o ponteiro.

ex:

RSP = 0x1000
RAX = 0x1122334455667788

supondo que vamos guardar os bytes de RAX em RSP
mov [rsp], rax

O que a CPU faz de verdade:
A CPU grava 8 bytes começando em RSP, em endereços crescentes:

endereço   conteúdo
0x1000 →   88
0x1001 →   77
0x1002 →   66
0x1003 →   55
0x1004 →   44
0x1005 →   33
0x1006 →   22
0x1007 →   11


Isso é chamado little-endian, isso é funcionamento real do hardware.

se focemos ler o conteudo de [RSP] estaria assim:

0x1000 a 0x1007 [RSP] = 0x8877665544332211

ou seja, oque eu tinha em rax foi gravado "invertido" em rsp.

no entanto se eu ler novamente o dado de RSP com um registrador, ou seja coletar os 64bits de uma vez:

mov rbx, [RSP] = 0x1122334455667788

portanto o CPU reconstroi naturalmente a ordem correta.

com este funcionamento podemos entender que para preservar o conteudo corretamente devemos manter o mesmo método, ou seja se gravamos com registradores de 64bits, recuperamos com 64bits etc...

se tivermos que coletar separadamente alguma parte, isso complicará as coisas por ex:

mov al, [rsp]      ; lê 0x88
mov al, [rsp+1]    ; lê 0x77
mov al, [rsp+2]    ; lê 0x66

por isso não vou utilizar esta metodologia, exceto quando quiser o exato comportamento invertido (isso pode servir como base de compressão para MULBANREGs)

-------------- XMM's ------------------------------------------

provavelmente vou utiliza-los para representação visual, ou seja trabalhará junto com MULTI-BANDA-REGs, servindo como compactador e descompactador de dados.



---------------------- PENSAMENTOS que ajudam no desenvolvimento ---------------------------------------------------

 como funciona o CPU em termos de, ele lê uma instrução, e salta para a proxima, porem a instrução que ele ja utilizou é descartada?
 não tudo que ja esta na RAM fica la ate que alguem altere.
 
 onde fica estas instruções afinal? RAM-L1? 

o ponteiro de RIP é o ponteiro real físico do CPU, CPU lê apenas em linha reta, ele coleta da RAM ande o ponteiro RIP esta, coleta alguns bytes e leva uma "copia" para L1, L2, L3 uma memoria interna da CPU que é mais rapida. e isso explica porque LOOPs podem ser rapidos, pois mantem em L1.. os dados sempre quentes.

-------
percebo que na verdade existem 2 tipos de códigos. aqueles que rodam 1 vez e aqueles que entram em loop. um programa precisa dos 2 para funcionar, o primeiro passo é inicializar tudo, e isso vem com comandos descartaveis apos o segundo passo que é um loop que mantem o programa funcionando em tempo integral.

por isso durante construção de Ubins no futuro irei implementar essa divisão onde o primeiro conjunto de MUbinfinaldescartavel irá inicializar o programa dentro da mochila e será descartado posteriormente, ficando apenas MUbinffinal(MUbin final que realmente atua em tempo integral como forma de "loop")

------


na RAM sempre existe informações, a diferença é que ela vem com oque chamamos de lixo, pois seus bytes estão aleatorios.
se eu jogar RIP neste "lixo" oque acontece? CPU trava? CPU pode entrar em modo espera?

CPU lê oque esta no ponteiro de RIP independente doque esteja la, ou seja CPU funciona sempre, não trava. o problema é que CPU pode realmente executar instruções reais inimaginaveis, isso pode não só causar artefatos visuais etc.. como tambem pode consumir muita energia elétrica, isso depende de qual instrução a CPU esta executando. por falta de sorte tambem pode executar instruções que podem comprometer perifericos como HD etc.. mais isso é extremamente improvavel, pois CPU teria que executar exatamente as instruções corretas na ordem certa.

CPU não espera, o unico método real de fazer CPU esperar é criar um LOOP simples que espera uma resposta em algum endereço especifico ou registrador que tira do LOOP.

quem vai me dar o primeiro ponteiro RIP?
no nosso caso por enquanto SO utilizado. porem futuramente será o motor de partida ou RMI. apartir dai eu posso movimentar na RAM inteira e reler codigos, etc.. isso me permite alterar dados da ram a qualquer momento.

geralmente quando executamos um programa em SO por ex no linux, em ASSEMBLY nasm utilizamos CALL ou JMP, isso força RIP apontar para onde queremos, e CPU imediatamente inicia proscessamentos.


BOAS PRATICAS DE PROGRAMAÇÂO SÂO CRUCIAIS INICIALMENTE

RAM é lenta, porem ela passa a cada ciclo de CPU proximos bytes para L!,L2,L3 ..., por tanto se tenho um código linear, como posso ter ciclos mais rapidos doque a velocidade de RAM? não faz muito sentido em termos reais que: ao puxar comandos da RAM para L1... e dai pra CPU o tempo total de cada ciclo se considerarmos os comandos de 1 cicloCPU, será o tempo exato que demora pra vir da ram passar pela cache e depois cpu processar?

não, oque acontece é que RIP aponta pra RAM, CPU puxa pra L1 muitas instruções de uma vezada só, isso permite tempo para que CPU processe as instruções enquanto novas instruções estão sendo baixadas para L2, L3.

tambem parece que isso oscila bastante devido aos calculos, ou seja, na maior parte das vezes uma instrução exige muitos calculos internos na cpu. alem disso proximas instruções não consomem dados e sim novas instruções(um jogo de MOVs ADDs SUBs etc.. então isso cria um tempo ideal onde CPU consegue agir mais rapido, e quando termina todos dados espera chegar da cache novos parametros.

é extremamente importante pensar em manter proscessamento com cache quente, ou seja evitar coletar muitos dados da RAM via registradores como RSP para RAX por ex. o ideal é tratar o maximo de proscessamento interno de uma vez e depois que finalizar enviar para buffer. isso vem do programador, ele é quem vai participar disto. ou seja, inicialmente códigos podem ser lentos se mal planejados, a arquitetura correta é pegue a informação, tratea por completo, ou pelomenos o maximo que der, e libere para RAM novamente, se fizer isso, CPU ja vai ficar ocupada tempo suficiente ate que chegue novos dados para L3, L2 e L1.


-----motor de partida
para o motor de partida o passo MdP é: um documento feito por PlayUbins vai determinar a montagem de MU/Ubins de incialização do SO minimo, oque será descartado posteriormente e tambem me dará RIP ponteiro na base da mochila onde se encontrará RMI. apartir dai então RMI monta o primeiro MUbinfinaldescartavel e MUbinf o ecosistema de Ubins, tanto os descartaveis como aqueles de loop(estes que contem tudo aquilo ja falado anteriormente, como dados estaticos "variaveis" etc.. alem do proprio motor(CPUs).

ate aqui então tudo beleza. oque é que preciso fazer então.
preciso criar um outro RMI interno que ficará dentro do loop, este RMI interage com inputs e outputs, interface grafica etc.. este permite que em realtime possa alterar exatamente os bits/bytes de @EST, @COMP, @SIG, @MULBANREGs. claro vamos manter aqueles parametros de regras obrigatorias, nas quais imediatos de 64bits não aceitam maiores que isso, sendo assim esse mini RMI não vai permitir alterar. vamos chamalo de: 

---------------- CBTR (Controle-Binario-Tempo-Real) -----------------------

	tambem posso futuramente quando ouver o proprio SO de Ubins, incluir o PlayUbins(programa visual) que conversa diretamente com CBTR. e para que eu consiga alterar alguns imediatos sem quebrar o sistema, ainda que eu possa criar uma duplicata de mochila. Eu simplesmente abro o programa PlayUbins que é uma outra mochila(ou seja dentro da mochila principal eu pesso pra mandar ponteiro de RIP para novo local(local de PlayUbins apos inicializado claro) e utilizar o motor CBTR para ajustar parametros da mochila principal. assim consigo alterar os imediatos dos Ubins em tempo real.
	MULTI-MOCH(posso tambem utilizar formas de intercalar e dividir tela para que proscessador rode 2 mochilas em paralelo 100 ciclos para cada ou 1 CPU para cada, isso ajuda a debug visual) 
	
ainda posso criar um sistema que salva estes novos parametros no HD para permanencia/comparação pra IA. e tambem posso criar agora dentro de PlayUbins uma alteração total do código da mochila principal SO, em realtime, mesmo que eu altere Ubins de 64bits para 128bits ou  32bits, CBTR pode sair do MULT-MOCH e manter só em PlayUbins, e realocar os offsets da F-RAM(ram dedicada para cada mochila) de SO(mochila SO principal).


CBTR pode alterar tamanho de Ubins, porem se estiver em MULTI-MOCH, CBTR desativa a mochila a ser adulterada, e a reinicia com os offsets corrigidos ou seja( ela chama RMI pra montar a mochila dinovo porque alterei alguns Ubins de bits diferentes.) ou tambem posso sem reiniciar manter o MULTI-MOCH ativado porem mandar o ponteiro de RIP da mochila a ser adulterada para o Loop(pause) que estará em um local separado na ram que ninguem pode mexer. dai CBTR altera os parametros ajusta offsets, e isso tudo ainda mantendo os estados atuais, e devolve o RIP para a mochila em questão. (muitas das vezes vai ser melhor reinicia-la doque fazer isto pois manter o estado e alterar pode gerar bugs, mais o importante é termos liberdade para experimentar, pois muitas coisas boas sairão dai) pois eu posso avaliar lugares que a CPU não vai pisar e alterar, e volto pra mochila em questão e aciono essa parte(tipo uma funcionalidade que só funciona se eu pedir)

isso tudo é imbativel. e + o SO que farei não precisa ser muito completo, pois ele só é na verdade uma mochila que serve pra chamar outras, sendo assim se eu baixar um novo programa feito por PlayUbins eu só subo do HD para ram com RMI e ja ta funcionando. o SO só vai ser o gatilho. isso possibilita que eu rode muitos programas ao mesmo tempo, e posso ainda dividir a tela em 2 ou 4 se quiser assim posso ver os 4 programas na mesma tela, isso so é possivel devido a MULTI-MOCH(multiplas mochilas, faz RIP saltar pra cada mochila em ciclos, ou por cada mochila executada por CPU diferentes), isso pode consumir mais proscesso e tornar um pouco lento, devido a saltos exigirem reescrita de entradas se estiver usando apenas 1CPU, mais ainda sim é muito util.

CBTR será um mini motor acoplado em cada mochila, os programas finais não precisam conte-lo, a mochila PlayUbins sera capaz de alterar outras mochilas porque elas tambem utilizam CBTR, permitindo alteração/debugs/testes/criação e interação com IA durante o proscesso de desenvolvimento, e depois posso criar uma mochila IA que contem tambem este CBTR e permite ela editar outras mochilas, voce simplesmente pede a ela qual mochila e oque quer fazer nela, e assim será.


agora vem o grande problema. o conceito funciona, e muito bem, porem preciso fazer RMI capaz de entender offsets de imediatos gerados por assembly, CBTR tem que saber resolver as alterações em realtime, PlayUbins tem que converter o código feito, para bits, ou deixar isso como responsabilidade de CBTR, ainda assim terá que interpretar o arquivo play.ubin e verificar oque foi alterado, converter para bits os novos parametros, e agir sobre a F-RAM

lembrar que tamanhos de Ubins vão variar, obrigando a mochila ser altamente oscilavel em offsets.
a solução é se tenho um Ubin de entrada RAX saida RAX 64bits, logo tamanho fixo. só tenho que ter certeza de onde esta os 64bits de entrada, para altera-los via CBTR, esses dados virão do arquivo play.ubin


-------------------- RMI outra vez e novos FUNCIONAMENTOS----------------------


RMI esta grande d+, então vou reduzir sua função, RMI será apenas montador de mochilas. 


@EST será adicionado na F-RAM durante montagem, isso permite que IUbins como rax.bin possa pegar o valor imediato dentro de @EST, ou seja onde estava a sentinela de imediato de rax.bin agora apontará para RSP + offset do estatico especifico. sabendo que rax = 64bits e estaticos só trabalham com 64bits não temos problemas

para tornar alteravel, manipulavel em tempo real por PlayUbins, farei o seguinte:
@EST agora conterá 128bits por dado, oque acontece é que CBTR monta duplicatas dos dados, ou seja se tenho um valor ex: 5, CBTR duplica para ocupar mais um slot. isso possibilita que o ponteiro de IUbins sempre apontem para o primeiro valor, assim poderemos altera-lo em tempo real, porem se algo der errado CBTR copia o valor ao lado(valor este original de montagem inicial) e permite que programa continue funcionando.

assim teremos como manipular dados em tempo real.

ainda posso manter a estrutura original e se quebrar CBTR só reajusta os dados originais de inicialização nos Ubins, assim não vai precisar mais reinicializar o sistema pois estaticos serão instruções inalteradas autopreservadas. 

se eu precisar mudar entradas de tamanhos diferentes podemos deduzir que precisarei adulterar o Ubin em questão, @EST e IUbins especificos, sendo assim PlayUbins terá que:

alterar Ubin desejado ex: ubinN64 para ubinN32, e alocar nova referencia na memoria F-RAM mutavel, e tambem avisar CBTR que agora IUbins de controle que apontavam para UbinN64 agora precisa apontar para UbinN32. 
para preservar @EST, podemos construir @MOD modificados em outra parte da F-RAM para aquele Ubin especifico

realoca offsets dos IUbins que fazem parte de @CPUs, porem @EST estará intacto. tudo vem de CBTR.

para que isso tudo funcione ainda preciso de metadados de configurações, posso usar o topo da F-RAM, pois CBTR naturalmente durante proscesso de desenvolvimento pode crescer, diacordo as mudanças feitas.


CBTR pode ser adicionado no programa final como programas auto ajustaveis, porem como excesão, ou seja na maior parte das vezes para disponibilizar o produto final desenvolvedores devem remover CBTR da mochila e disponibilizar o programa fixo, garantindo ainda mais robustez e segurança. vale resaltar que 1 prgrama não interage dirétamente com outro, por enquanto, porem podem existir excesões, e isso não precisa ser pensado agora. e empresas que mantem uma gama de programas disponiveis podem adicionar todos apenas em uma Mochila, como um mini SO da franquia. em termos de segurança eu consigui o apce de segurança. pois haverá um motor de inicialização da mochila mãe, ou um motor montador das mochilas para usuários finais, na qual impede qualquer outra mochila interagir com as demais, isso torna totalmente seguro a implementação de bancos de dados, e empresas sérias, alem do mais eu temia IA ficar muito poderosa e quebrar os sigilos, senhas etc.. porem com este método de regras fortes, só haverá golpe se algum haker adulterar fisicamente o inicializador do sistema mãe, e ele terá muitas regras para impedir isto.


CBTR como ferramenta, não como dependência
Você fez uma distinção essencial:
CBTR ≠ parte obrigatória do runtime
CBTR = ferramenta de desenvolvimento / exceção controlada
Fluxo correto:

Durante desenvolvimento: CBTR presente, mutações permitidas, offsets vivos, debug + IA + PlayUbins, 

Produto final:
CBTR removido
mochila fixa
imediatos congelados
offsets selados

Resultado:
menos superfície de ataque
execução determinística
máxima robustez

Isso é muito mais seguro do que linguagens tradicionais, que carregam introspecção, heap mutável, syscalls abertas etc.
Isolamento total entre mochilas (segurança real)


o sistema de Play.Ubins calcula offsets apartir dos dados de cada MU/Ubin, e monta o arquivo play.bin totalmente ajustado.
CBTR lê play.bin, carrega todas dependencias, constroi um MUbin final gigante em binario.
RMI apenas monta este MUbinf(MUbin final) na F-RAM, trate RMI agora como um gerenciador de mochilas.

agora só é utilizado apenas 1 Ubin e 1 MUbin de cada na F-RAM, isso torna o programa minusculo, oque é "repetitivo" são os IUbins(Ubins de controle) encadeados em linha, eles emitem entradas, e controlam saltos de MU/Ubins.



deixo agora a parte mais importante deste projeto:
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

	

================================================================================================================

---------------- PENDENCIAS a serem desenvolvidas -----------------


COM o novo sistema de RMI e CBTR que instalam apenas 1 MU/Ubin de cada na F-RAM, em caso de alterações de tempo real por PlayUbins:

substituição de Ubin por outro de tamanho diferente:
quando o desenvolvedor em PlayUbins seta novos parametros que exigem um Ubin ainda não instanciado na F-RAM, PlayUbins carrega-o emcima de todos apos CPUs e altera apenas os imediatos de IUbins para offset apontar ao novo Ubin escolhido. este comportamento garante velocidade de compilação em tempo real e evita a nescecidade de remontar tudo, visto que se focemos eliminar o Ubin anterior utilizado, e instalar o novo Ubin desejado no lugar dele os tamanhos são diferentes obrigando remontagem total para correção de offsets.

o programa sendo totalmente ajustado o desenvolvedor poderá confirmar alteração, e PlayUbins irá gerar produto final onde uma nova mochila será inicializada em paralelo com a anterior porem em segundo plano, e quando finalizada poderemos sair da mochila anterior, e saltar para a nova.



---------------
estudar compactar dados de 64bits para 16bits com 4 ciclos para compactação, e 4 chaves. via xor

cojitar possibilidade de XOR servir tambem para regredir bits, impedindo saltos. em mulbanregs se em 16 bits precisarmos estrapolar o valor ele saltaria para o proximo copo, para impedir isso poode ser aplicado mascara de redução, armazenar na ram o valor de redução, tratar os dados, e ao final recuperar a redução.

---------
cojitar possibilidade de permitir que GPUs podem ser util para proscessar átomos de P3X fora da parte visivel da camera, assim permitindo calculos em temo real do mundo inteiro de P3X pois CPU proscessa só oque é visivel


-------------
cojitar construir um mini gestor de ponteiro RSP que trabalha lado a lado com CBTR. inicialmente construir um IUbin especifico que seta ponteiro de RSP, depois ampliar para um motor que usa esse IUbin para gerir os dados de RSP: @livre, @comp, @Mulbanregs etc...
posso usar um metodo de manter ponteiro estatico em RSP e em cada Ubin que precisa utilizar F-RAM este minimotor coleta os dados de um espaço da F-RAM diferente, e joga na parte RSP onde esta o ponteiro, isso pode ser complexo, e torna um pouco mais lento, visto que exige realocação de memoria por uso porem torna mais facil trabalhar, e mais previsivel.
-----------

GPU precisarei de fazer Ubins utilizando não assembly, vai ter que ser spir-v:


-------------
Pensar como arrancar dados do HD/pendrive para RAM com RMI.




















