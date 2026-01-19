Este documento aida esta em fase de organização, o projeto é muito grande então aos poucos irei ajustando-o.
------------------------UBIN-------------------------------

Partindo da nescesidade de construir P3X um engine revolucionario 3D desenvolvi este projeto:

Devido a extensão do projeto, deixarei apenas oque é mais relevante aqui.

Ubin surgiu com esta nescesidade de tornar oque é complexo em simples, pratico, agil. Chega de ficar digitando linhas e linhas..
Hoje a IA ja trouxe para nossas vidas muitas coisas. Usando-a com boas intensões a humanidade pode ser muito melhor e viver melhor.

Ja adianto a todos que as intensões deste projeto são excelentes para nós seres humanos e devemos ter controlhe sobre isto, pois oque estou prestes a apresentar deve ser implementado com cuidado.

APRESENTANDO O CONCEITO:

Oque nos impede de fazer qualquer coisa na maquina?. a eu quero criar uma imagem, quero criar um bloco de notas etc.... quando voce pensa em criar algo oque nos limita e atraza, é sempre o processo pratico. Atuar programando, revendo codigos, debugando, aperfeiçoando, isto leva tempo e da trabalho, mesmo em coisas simples. Se eu quero um programa ultra rapido tenho que conversar diretamente com os transistores do CPU, e isso não da pra fazer, não da forma tradicional. hoje existem diversas arquiteturas de hardware, cada uma com suas particularidades especificas, drivers etc....

o sistema binário é o mais proximo que podemos ir, mais tambem o mais complexo, ja não somos capazes de entender perfeitamente como funciona de verdade estes codigos. então podemos ainda continuar não conhecendo. E agora como podemos melhorar o desconhecido?.

IA sabe fazer uma imagem muito realista e ela não entende oque é profundidade ou iluminação etc.. mais consegue ainda assim faze-la. IA entende numeros, e com base neles e nosso feedback, asimila a nossas nomenclaturas representativas.

Preciso fazer o P3X e quero que ele seja computacionalmente leve, porem completo, que entregue muito e exija pouco.

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
	para usar Ubins em outras linguagens voce baixa o Pacote de Ubins mais atualizado para sua arquitetura.
	conjunto que contem todos metodos existentes de Ubins para arquitetura desejada. voce importa chama o metodo que quer, ele executa e devolve o resultado.

Nota: considerar a possibilidade real de que Ubins e derivados não executarem em linguagens de programação a não ser PlayUbins, devido a possiveis incompatibilidades. Isso depende do rumo que o projeto vai tomar

------------------------------------------------------------------------------------------------------------------------------
cada arquitetura de computador como: x86-64, tem ISA (Instruction Set Architecture) pequenas instruções que controlam o CPU e derivados.
O processador só entende as instruções compativeis com sua arquitetura.

estas instruções são dadas pelos fabricantes:

A Intel e a AMD definem o conjunto de instruções x86-64 (também chamado AMD64).
Todas as CPUs compatíveis com x86-64 suportam o mesmo núcleo de instruções básicas: mov, add, sub, cmp, jmp, call, ret, etc.
Isso significa que um programa binário seguindo parametros para x86-64 funciona em qualquer CPU que siga o padrão, independente do fabricante.

Alen das instruções padronizadas cada fabricante tem Extensões opcionais especificas de sua construção:

Intel por ex tem instruções especificas dela: SSE, AVX, AVX2, AVX-512, TSX
AMD por ex tambem tem instruções especificas: SSE, AVX, AVX2, 3DNow (mais antigas), etc.

e neste ponto se fizermos Ubin.bin ex: LOOP.bin que contenha algumas dessas instruções especiais teremos que ter 1 Ubin.bin para Intel's, e outro para AMD's

ISA - Estas instruções são uma padronização e atuam na entrada dos processadores, oque acontece internamente cada fabricante faz de um jeito e de jeitos diferentes para cada modelo de processador criado, oque chamamos de Microarquitetura, na qual fisicamente processadores são diferentes.
Mas isto não interfere nas instruções, pois no final a arquitetura converge para manter o mesmo padrão. 
Oque muda na microarquitetura, é, se o processo é mais lento, mais rapido, consome mais energia, é melhor em um tipo especifico de calculo/comparação etc.. e isso é uma coisa que não podemos mudar ja que depende da composição física do processador.

as instruções podem ser escritas na forma mais basica = ASSEMBLY, ou ainda mais baixo nivel Codigo de maquina = byte a byte utilizando hexadecimal para representa-los.

estes codigos(bytes) ja conseguem ser interpretados pelo processador, e é a unica forma de comunicarmos diretamente com ele, não existindo nada abaixo disto em termos de software.

Podemos entender que em termos de programação temos possibilidades finitas possiveis para montar um método(ex: soma). visto que no final das contas o processador físico trabalha com portas lógicas. então mesmo que á muitos caminhos para fazer a mesma coisa, podemos encontrar o melhor caminho que nos trará o mesmo resultado, porem com mais eficiencia energética e velcidade.

com isto em mente podemos:
	.Manualmente, observar a arquitetura e prever os melhores bytes para aquele metodo.
	.Utilizar disparos aleatórios com regras e medições para encontrar o caminho mais rapido.
	.Utilizar IA para testar todas as formas possiveis manipulando ISA, para encontrar o mesmo resultado com um método que funcione de forma mais rapida.

apesar disto ser possivel, mensurar oque se passa dentro do processador é complexo. então percebendo isto continuei a pensar sobre oque poderiamos fazer. Pois em termos de IA eu precisaria de um poder computacional enorme ate encontrar os melhores caminhos.

Deixo claro aqui que por hora inicialmente o Projeto se trata de desenvolver na CPU, visto que GPU é inviavel utilizar este sistema basico, ja que cada arquitetura possui formas diferentes de interpretação, no entanto posteriormente pode ser possivel.

Oque importa na computação é: mostrar na tela, e interagir com usuario. Por isto meu foco é total em CPU ja que é mais previsivel, e podemos extrair muito potencial.

O intuito principal de Ubin é quebrar o paradigma atual da computação que vem sendo empurrada com a barriga por decadas.

Antes de desenvolvermos o Ubin para como será a implementação com IA, precisamos conhecer o conceito Ubins em sua parcial forma pelomenos.

----------------------------UBIN-------------------------------------------------------

Imagine agora que criamos um banco de dados online, este banco de dados armazenará os MU/Ubins mais rapidos para cada arquitetura. vou exemplificar para melhor compreensão:

Ubins = conjuntos de instruções minimas construidos a mão no formato binario.
MUbins = varios Ubins encadeados, formando um método mais complexo (Multi Ubins).

cada MU/Ubin terá seu metadados, contendo todos detalhes, incluindo suas funcionalidades.

Para que eu possa explicar mais facilmente, vamos tratar cada Ubin com nomes ja representando oque eles fazem. então ficaria, inout_For.bin inout(significa que o laço ex: For binario contem entradas e saidas. o numero de entradas e o numero de saidas pode ser variado(ex: in2out1_For.bin). 

todo o codigo binario que compoe este arquivo é deterministico, ele tem entradas e saidas fixas. Assim podemos ter mais controlhe dos codigos que serão feitos utilizando MU/Ubins. em casos especificos podemos tambem criar outras variações de For.bin. 

Agora que ja foi apresentado esta ideia inicial ela pode ser aprofundada.

ate então oque temos são conjuntos binarios(Ubins) que se tornam metodos(MUbins), podendo ser simples ate complexos. a sacada é que podemos acoplar MUbins dentro de outros MUbins ou seja se dentro deste inout_For.bin eu quiser introduzir um outro inout_For.bin. consigo encadear um metodo dentro do outro.

então construimos um novo Mubin que é a junção de 2 MUbins. mais voce leitor(a) pode pensar que neste caso é mais facil criar diretamente um novo Ubin.bin que ja possua exatamente este comportamento, evitando assim utilizar Mubin. e sim, é isso mesmo. Porem para que isso seja desenvolvido mais rapido e escalonavel para varias possibilidades, os usuarios programadores, podem utilizar Mubins, para combinar os MU/Ubins ja existentes, e ao final eles enviam este novo metodo para o banco de dados online.

sendo assim teremos um escalonamento muito rapido de todos os metodos nescessários. porem ainda não totalmente otimizados, visto que:

	.apenas o primeiro metodo implementado foi feito dirétamente em bytes. oque chamamos de Ubins.bin
	.os derivados criados apartir de Ubins. oque chamamos de Mubins.bin, sao feitos com bytes ainda não otimizados ja que o conjunto formado pelo Mubin, poderia ser reescrito de outra forma binária ainda desconhecido, que tenha melhor performance e viraria Ubins.

porem é impraticavel para nós humanos fazermos para cada Mubin novo que surgir um codigo binario otimizado a mão, ou seja buscando os melhores caminhos do processador para atuar. então esta parte virá com IA.

O funcionamento basico de uma IA é analizar o comportamento de algo e apartir de parametros ja existentes de resposta, compreender o funcionamento de algo, utilizando somente formulas e calculos matemáticos, ou por comparação.

então podemos introduzir IA para analizar os Mubins(Multi-Ubins acoplados um dentro do outro ou em linha, pode ser mais de 2) e os torna-los Ubin(que seria a melhor representação para aquele Mubin em bytes otimizados para arquitetura especifica, ou seja o caminho mais rapido para atingir o mesmo resultado). porem ainda temos problemas, pois IA para mensurar os melhores bytes tem que avaliar e comparar bytes Mubins com ISA da arquitetura em questão. 
Para que isso seja bem feito, IA precisa antes de tudo compreender perfeitamente o funcionamento de ISA e a intensão de cada MU/Ubin.
IA precisa compreender a intensão de cada método em comparação com resultado final bytes, ela tem 3 fontes primárias para avaliar:

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

2- outro detalhe que preciso deixar bem claro é: todo código Mubin é feito por humanos. logo muitas partes dos códigos contem redundancias e tambem resultados internos ja previamente calculaveis oque chamarei de "ruidos". isto significa que antes mesmo de Mubin ser enviado para o BDD Ubin/Mubins e ser disponibilizado para todos, precisamos desenvolver um sistema que verifica o código Mubin, e remova estas peculariedades. pois para que IA tenha precisão em aprendizado, deve receber os dados bem "mastigados" e mais corretos possiveis. Para usuários, se utilizarem Mubins dentro de Mubins chieo de ruídos, o final resultante seria um novo Mubin ainda mais complexo e problemático.

3- alem destes detalhes tenho que esclarecer que o apice de Ubin será quando voce disser: faça um programa que dobre a imagem 2x e com reescalonamento IA. e seu programa está pronto. com todos Ubins montados, e voce ainda pode revisar, alterar e ajustar oque quiser.
e para chegar neste ponto final inicialmente a intesão do usuário deve ser fracionada em passos simples. Veja bem, hoje ja existem IAs capazes de intepretar o texto ou voz e fazer diversas coisas. porem estamos falando aqui de algo muito maior. estamos falando de aproveitamento de hardware e facilidade de programação total. não é como uma IA monta um código hoje. é totalmente diferente.

4- Resultados. O problema agora são os resulados. cada MUbin executado na maquina entrega um resultado. seja um numero uma letra/palavra/frase, um outro MUbin ou Ubin, uma imagem, um pixel, um bip. muitas coisas. então tambem temos que tratar de entender totalmente os resultados antes de entregar para IA aprender. Poderiamos permitir que todos usuários enviasem para nós o Mubin com um texto explicando oque é a intensão e oque é o resultado. porem confiar totalmente nos usuarios é um problema. Os usuários mesmo os de responsabilidade, podem por equivoco enviar um Mubin que não funciona direito, ou que tenha outro resultado, fóra a despadronização total. então teremos que encontrar outro método de determinar o resultado.

Agora que ja expliquei o principio básico doque precisamos vou explicar o Umap.

Ja vimos que será nescessário muitos processos para transformar Mubin em um Ubin aceitavelmente performatico e estavel. lembrando que Mubin é rapido mais quando se transforma em Ubin é obrigatoriamente mais performático.

oque afinal Umap faz?.
Umap reune todos os Mubins que tem resultados identicos. esta é a regra. o resultado foi o mesmo? reuna-os. mais é só isso?. não. Umap tambem tem que verificar a intensão, oque realmente o código quer fazer, não basta só o resultado pois tambem a intensão é importante, talvez ate mais doque o resultado.
então no banco de dados temos muitos Pre_MUbins(MUbins ainda não verificados e refinados) recebidos pelos usuários PlayUbins. Umap organiza-os por pastas internas todos arquivos iguais de resultado, e muito proximos de intensões. Umap tambem cria um mapeamento de links dos quais PlayUbins pode buscar MUbins ja criados/verificados. ou seja se eu estou programando e quero algum método, antes de criar, dou uma olhada no BDD, Ubins e Mubins se há algum que me atende. todos MUbins tem descrição de quem o construiu. isso pode ajudar o proximo usuário a compreender melhor o MUbin em questão, pois muitos deles podem ja ser quase um programa por si só. o usuário sempre optará por Ubins, e só usa MUbin em ultimo caso, tanto baixando um ja pronto, quanto criando um próprio. (estes Mubins são ascessiveis apenas após UMap ter os processado)

Agora que temos um mapeamento bem elaborado, executamos o REFINE_root(App externo uso sómente para desenvolvedores de Ubin). que é o programa responsavel por refinar o código removendo aqueles "ruidos" ja falado antes. ele tem suma importância, pois é ele quem testa o MUbin marca como seguro(codigo responsivo e funcional) e define a intensão real do autor. no entanto ainda existe um detalhe. REFINE_root exige um requerimento explicativo sobre o MUbin, este texto será avaliado pela IA basica linguistica, que reformula a intensão com uma frase menor, e palavras melhores. isto é nescessário porque usuários são de diversas linguas. assim unificando tudo em algo palpavel. o MUbin em questão agora sai fóra do link de Pre_MUbins(Mubins não verificados), e tornase disponibilizado com certificado de verificação para todos usuários de PlayUbins, alem de entrar na fila de avaliação manual, no qual um colaborador/desenvolvedor do projeto irá verificar oque o código faz e sua intensão, fará alguns ajustes se nescessário.

Antes de prosseguirmos vamos entender PlayUbins.

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

graficamente eu pensei em uma coisa muito interesante. ja estamos anos com linguagens de programação por escrita, e isto ja esta cansativo. A inovação de programação visual apesar de interesante é lenta e pode ser confusa. 

No caso de PlayUbins é nescessário que seja visual a programação, pois oque estou desenvolvendo exige isto, ficara mais claro ao longo do tempo.

ainda se tratando do programa PlayUbins o usuário poderá solicitar ajuda, tornar  projeto público etc.. e para empresas que vão produzir um software fechado para mais segurança e privacidade podem usar PlayUbinsAvançado, com muitos outros detalhes avançados alem de poder usar um Server Local e se manter desconectado do servidor original PlayUbins, mantendo assim toda privacidade desejada, se houver a nescecidade de fazer download dos Ubins e Mubins, a empresa pode acessar o site BDD e fazer o download separadamente do programa, injetar em seu sistema particular e ja fica pronto para uso.

Em PlayUbins para usuários, conterá a ferramenta REFINE_User, ela é nescessária para que o usuário ja possa melhorar seu código dirétamente.  REFINE_User trabalha removendo ruidos de cada Mubin separado, e ao final do programa, quando todo o projeto estiver pronto ele tambem refina o Mubin final. este processo só acontece na maquina do usuário.

REFINE_Root é nescessário porque ao usuário enviar um Mubin para o server, ele deve ser enviado sem a melhoria REFINE, pois ainda é considerádo um PreMubin, e REFINE_Root pode adotar novos parâmetros de tratamento diferentes dos que REFINE_User usa. isto é devido a nescecidade de mantermos a confiabilidade do código para o consumidor/desenvolvedor, visto que é de extrema importância que usuário tenha um sistema seguro e funcional, ja REFINE_Root pode ser mais agressivo para testes e aperfeiçoamento. em cada versão do REFINE_Root podera ser determinado um novo REFINE_User melhorado e aperfeiçoado, porem sempre seguro e responsivo.

a ideia é manter todo o codigo matematicamente mapeavel. aplicando REFINE_Root e verificando manualmente, teremos um MUbin pronto para uso. mais ainda não podemos disponibiliza-lo para usuários e tambem treinar IA.

Vimos que cada arquitetura de processador, tem diferenças das quais nós seres humanos precisamos delas, e ao mesmo tempo ficamos prejudicados. à nescecidade de existir muitos tipos de processador, e eles precisam ser diferentes arquitetonicamente falando. A padronização ISA é exelente para programadores usuarios finais, pois permite que um código binario funcione em varias maquinas diferentes. porem é uma limitação para os engenheiros fabricantes de processadores que não podem sair da "caixa", por causa da padronização. e isso é uma baita limitação.
Oque estou propondo é eliminar os problemas de compatibilidade, isso permite que os padrões não sejam mais nescessários(não agora, porem num futuro proximo) e GPU entre na jogada(provisóriamente, visto que o ideal é que haja sómente 1 CPU simples para tudo, provavelmente será NPU que dominará o mercado, ou uma outra possibilidade -> CPU analogica não digital(isso pode ser muito interessante, ja pensei sobre este assunto.)).

Em qualquer linguagem de programação que utilizarmos para resolver algum problema no final funcionará no processador como bytes. precisamos então encontrar estes bytes, que representam a intensão do usuário. porem se for capturar todo o código(MUbin final) fica dificil iniciarmos. assim vamos fócar em capturar intensões pequenas/minimas como por ex: um simples MUbin feito de 2 Ubins. Mais calme-se, ainda não esta no ponto. 

-------------------------IA Juntor---------------------------------------

implementar IA para selecionar todos MUbins ja refinados e verificados no BDD que contenham o mesmo resultado final e com a mesma intensão(ou pelomenos bem proxima). apartir dai executar cada MUbin repetindo os parametros de entrada e contabilizando o tempo de duração da execução de cada um, escolher o mais performatico. então este ja é o primeiro passo para conseguirmos MUbins mais rapidos.

revisando para facilitar a compreensão:

1- VisualPlayUbins, criamos novo projeto adicionamos primeiro Ubin.for, adicionamos MUbin vazio, renomeamos: MUbin.meumubinforfor, e realocamos Ubin.for dentro dele. duplicamos Ubin.for, e por hora esta em paralelo, modificamos para acoplar(encadear um for dentro de outro). testamos. o resultado final então é MUbin.meumubinforfor, que contem um laço dentro de outro. finalizamos o projeto. entramos na galeria, MUbin.meumubinforfor, descrição, e escrevemos oque é a funcionalidade/intensão, na aba detalhes/instruções de uso, pode deixar vasio. enviamos MUbin para server.

2. Server recebe MUbin, trata-o como PréMUbin. organiza com UMap, aplica REFINE_Root leva para fila de verificação manual.

3- Desenvolvedor testa o MUbin. renomeia se nescessário, ajusta. se precisar dinovo faz REFINE_Root outra vez. estando nos conformes marca-o como verificado.

4- MUbin.meumubinforfor quase pronto

agora então entendemos que MUbin.meumubinforfor não é o único criado com esta funcionalidade for dentro de for. pois há outros métodos melhores para fazer isto. e ainda que não haja perceptivelmente, lembre-se que pelos metodos minimos ISA podemos atinjir mais otimização, porem como esta parte virá no final com IA releve por agora.

oque estou dizendo aqui é que para códigos pequenos como este acima representado pode não ser tão perceptivel que haverá codigos diferentes com mesmos resultados, porem se formos ampliando e perceber que MUbins podem estar dentro de MUbins, teremos códigos muito mais complexos e diferentes, porem com mesma intensão e mesmo resultado. por tanto para oficialmente tornar um MUbin disponibilizado para comunidade utilizar em PlayUbins, teremos que tratar de escolher qual é o melhor.

sendo assim continuamos:

5- MUbin.meumubinforfor é selecionado pela IA Juntor, que o armazena junto com outros códigos identicos de resultado e proximos de intensão.

6- IA Juntor faz execução de cada MUbin e descobre o mais performático, sendo assim ele o classifica como apto/verificado/refinado. e ainda coloca a estimativa de velocidade que é uma escala para representar o quão rapido é. ex: ciclosDeCPU = 50

7- IA Aloca este MUbin para BDD e o disponibiliza para usuários, tambem envia um certificado ao original criador deste MUbin, e o classifica com uma pontuação. (esta pontuação é importante pois demonstra o desenvolvedor empenhado e tambem gera competitividade que ajuda no desenvolvimento de otimizações), vale resaltar que o nome do MUbin criado pode ser reformulado para ter mais coerencia, e o usuário desenvolvedor estará ciente disto.

8- MUbin.For2(MUbin.meumubinforfor renomeado para mais coerencia) esta ápto para entrar na camara de testes onde IA tentará supera-lo.

se entrarmos agora em PlayUbins, e em novo projeto e procurarmos MUbins disponiveis encontraremos o MUbin.for2, ele terá na sua descrição todos os detalhes, e tambem terá seu selo de verificado/refinado, alem da sua velocidade para fins comparativos do usuário. isto é nescessário devido a condições especificas onde empresas tem um ambiente interno fexado e podem utilizar versões diferentes do MUbin.For2, ou seja de tempos em tempos pode ocasionalmente surgir outros MUbins candidatos a suceder o MUbin.For2 anterior, e quem define isto é a IA Juntor, por isto ao invez de tratarmos por versões trataremos por velocidade(ciclos de CPU), e talvez responsividade.


---------------------------------TREINANDO IA PARA BYTES-----------------------------------
Agora estamos preparados para treinar nosso modelo IA que vai: 

1- identificar a intensão do usuario.
2- o resultado que MUbin retorna.
3- o byte final do MUbin.
4- comparar com os metodos minimos de ISA.

então determinamos agora que os MUbins verificados e disponibilizados para usuários, são unicos por método para cada arquitetura. este é nosso modelo.
e utilizaremos os PréMUbins, como treinamento para IA. nota: PréMUbins sem REFINE. isso é nescessário para que IA entenda como nós humanos nos expressamos.

muito bem. o objetivo final deste primeiro processo é, IA tente fazer um Ubin que tenha o resultado melhor que o MUbin apresentado, buscando o mesmo resultado de todos os PréMUbins, avaliando a intensão/descrição/Velocidade(ciclos).

então se conseguirmos exito nesta parte conseguiremos obter uma IA capaz de interpretar descrições e transforma-las em Ubins. Porem não inicialmente.
no começo ja basta que seja apenas o MUbin convertido para um novo Ubin, ou seja um código binário que é mais veloz que o MUbin, porem tem todas as mesmas caracteristicas funcionais de intensão e resultado.

tendo isto podemos remover/ocultar MUbin.For2, e alocar no BDD Ubin.For2, no qual terá seus dados como descrição, instruções de uso etc.. e tambem sua VELOCIDADE.

Ubins será apartir de agora um novo sistema de programação ja integrado com IA e banco de dados, poderá encontrar bytes muito mais eficientes para cada arquitetura. e em GPUs tambem será possivel, desde que os fabricantes disponibilizem todo o padrão ISA do hardware especifico.

aos poucos teremos muitos Ubins, e então IA tambem será capaz de compreender a intensão do user/desenvolvedor simplesmente por texto/audio, e construir um APP bem proximo do desejado, o usuário só ajusta as coisas.(isso ficará ainda mais claro, leia o documento por completo e entenderá).

perceba que é muito rapido a implementação de IA. o dificil é preparar tudo.

Para finalizar esta INTRODUÇÂO a minha invenção ainda deixo mais um beneficio que vem com todo este projeto:

Projetos feitos com PlayUbins podem ser atualizados facilmente, ja que em suma cada Ubin sempre manterá seu propósito/intensão/resultado, ou seja, sempre que encontramos um novo conjunto de bytes mais eficientes para algum Ubin, ele será disponibilizado para atualização. Voce poderá programar para uma unica arquitetura, e PlayUbins poderá exportar o programa para qualquer maquina de qualquer arquitetura, desde que tenhamos todos os MU/Ubins que contenham os mesmos propositos para cada arquitetura de CPU. 


------------------------------- POS INTRODUÇÂO ---------------------------------------

AGORA VOCE ESTA ÁPTO A CONTINUAR SEUS ESTUDOS, ASCESSE WIKI para todos detalhes.
