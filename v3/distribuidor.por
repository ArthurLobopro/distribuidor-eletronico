programa
{
	inclua biblioteca Texto -->txt
	//s = subnível
	inteiro s1,
	s2[2] = {0,0},
	s3[3] = {0,0,0},
	s4[4] = {0,0,0,0},
	s5[4] = {0,0,0,0},
	s6[3] = {0,0,0},
	s7[2] = {0,0}
	inteiro camada[7],camadavalencia = 0
	inteiro grupo=0, periodo=0
	cadeia familia="a"
	funcao inicio()
	{
		cadeia opcao = "A",atomo,simbolo
		inteiro numbackup,num //eletrons
	
		enquanto (opcao != "S" e opcao != "N" ){
		escreva("O átomo está em seu estado fundamental?S/N\n")
		leia(opcao) limpa()
		opcao= txt.caixa_alta(opcao)
			se (opcao != "S" e opcao != "N" ){
			escreva("\nSeleção inválida! Você digitou '",opcao,"' ao invés de uma das opções disponíveis, tente novamente!")
			}
		}
		se (opcao == "S"){
			escreva("Informe quantos prótons tem o átomo:\n")
			leia(num) limpa()
			atomo=nomeatomo(num)	simbolo=simboloatomo(num)
			escreva("Você informou o número: ",num,"\n\n")
			escreva("Nome do átomo: ",atomo,"\nSímbolo do átomo: ",simbolo)
			
			distribuidor(num)		achagrupo(num)		achaperiodo(num)		achafamilia(num)
			
			escreva("\n\nLocalização na tabela:\nGrupo: ",grupo,"\nPeríodo: ",periodo,"\nFamília: ",familia,"\n")
			camadas()
			ede()
			escrevacamadas()
			ecdv()
		}senao{
			escreva("Como o átomo não está em seu estado fundamental tudo que podemos fazer é a distribuição eletrônica\n")
			escreva("Informe quantos elétrons tem o átomo\n") 
			leia(num)	limpa()
			escreva("Você informou o número: ",num,"\n\n")
			distribuidor(num)	camadas()		ede()	escrevacamadas()	ecdv()
		}
	}
	
	//Faz a distribuição eletronica dos elétrons.
	funcao distribuidor(inteiro num){
		se (num - 2 >= 0){
			s1 = 2
			num = num -2
		}senao {
			s1 = num
			num = 0
		}
		se (num - 2 >= 0){
			s2[0] = 2
			num = num -2
		}senao {
			s2[0] = num
			num = 0
		}
		se (num - 6>=0){
			s2[1] = 6
			num = num - 6
		}senao{
			s2[1] = num
			num = 0
		}
		se (num - 2 >= 0 ){
			s3[0] = 2
			num = num -2
		}senao {
			s3[0] = num
			num = 0
		}
		se (num - 6>=0){
			s3[1] = 6
			num = num - 6
		}senao{
			s3[1] = num
			num = 0
		}
		se (num - 2 >= 0){
			s4[0] = 2
			num = num -2
		}senao {
			s4[0] = num
			num = 0
		}
		se (num - 10 >= 0){
			s3[2] = 10
			num = num -10
		}senao {
			s3[2] = num
			num = 0
		}
		se (num - 6>=0){
			s4[1] = 6
			num = num - 6
		}senao{
			s4[1] = num
			num = 0
		}
		se (num - 2 >= 0){
			s5[0] = 2
			num = num -2
		}senao{
			s5[0] = num
			num = 0
		}
		se (num - 10 >= 0){
			s4[2] = 10
			num = num -10
		}senao{
			s4[2] = num
			num = 0
		}
		se (num - 6>=0){
			s5[1] = 6
			num = num - 6
		}senao{
			s5[1] = num
			num = 0
		}
		se (num - 2 >= 0){
			s6[0] = 2
			num = num -2
		}senao{
			s6[0] = num
			num = 0
		}
		se (num - 14 >= 0){
			s4[3] = 14
			num = num -14
		}senao{
			s4[3] = num
			num = 0
		}
		se (num - 10 >= 0){
			s5[2] = 10
			num = num -10
		}senao{
			s5[2] = num
			num = 0
		}
		se (num - 6>=0){
			s6[1] = 6
			num = num - 6
		}senao{
			s6[1] = num
			num = 0
		}
		se (num - 2 >= 0){
			s7[0] = 2
			num = num -2
		}senao {
			s7[0] = num
			num = 0
		}
		se (num - 14 >= 0){
			s5[3] = 14
			num = num -14
		}senao {
			s5[3] = num
			num = 0
		}
		se (num - 10 >= 0){
			s6[2] = 10
			num = num -10
		}senao {
			s6[2] = num
			num = 0
		}
		se (num - 6>=0){
			s7[1] = 6
			num = num - 6
		}senao{
			s7[1] = num
			num = 0
		}
	}
	//Faz o somatório dos átomos nas camadas e acha a camada de valência.
	funcao camadas(){
		camada [0] = s1
		camada [1] = (s2[0]+s2[1])
		camada [2] = (s3[0]+s3[1]+s3[2])
		camada [3] = (s4[0]+s4[1]+s4[2]+s4[3])
		camada [4] = (s5[0]+s5[1]+s5[2]+s5[3])
		camada [5] = (s6[0]+s6[1]+s6[2])
		camada [6] = (s7[0]+s7[1])

		se (camada[0]>0){
			camadavalencia = 1	
		}
		se (camada[1]>0){
			camadavalencia = 2	
		}
		se (camada[2]>0){
			camadavalencia = 3	
		}
		se (camada[3]>0){
			camadavalencia = 4	
		}
		se (camada[4]>0){
			camadavalencia = 5	
		}
		se (camada[5]>0){
			camadavalencia = 6	
		}
		se (camada[6]>0){
			camadavalencia = 7	
		}
	}

	funcao escrevacamadas(){
		escreva("\n\nElétrons nas camadas:\n")
		escreva("Camada K: ",camada[0])
		escreva("\nCamada L: ",camada[1])
		escreva("\nCamada M: ",camada[2])
		escreva("\nCamada N: ",camada[3])
		escreva("\nCamada O: ",camada[4])
		escreva("\nCamada P: ",camada [5])
		escreva("\nCamada Q: ",camada [6])	
	}

	//escreva distribuição eletrônica.
	funcao ede(){
		escreva("\nDistribuição eletrônica:\n")
		escreva("1s",s1)
		escreva("\n2s",s2[0]," 2p",s2[1]) 
		escreva("\n3s",s3[0]," 3p",s3[1]," 3d",s3[2])
		escreva("\n4s",s4[0]," 4p",s4[1]," 4d",s4[2]," 4F",s4[3])
		escreva("\n5s",s5[0]," 5p",s5[1]," 5d",s5[2]," 5F",s5[3])
		escreva("\n6s",s6[0]," 6p",s6[1]," 6d",s6[2])
		escreva("\n7s",s7[0]," 7p",s7[1])
	}

	//escreva camada de valencia.
	funcao ecdv(){
		escolha (camadavalencia){
			caso 1:
				escreva("\nA camada de valência é: 1s",s1) pare
			caso 2:
				se (s2[1]>0){
					escreva("\nA camada de valência é: 2s",s2[0]," 2p",s2[1])
				}senao{
					escreva("\nA camada de valência é: 2s",s2[0])
				}pare
			caso 3:
				se (s3[1]>0){
					escreva("\nA camada de valência é: 3s",s3[0]," 3p",s3[1])
				}senao{
					escreva("\nA camada de valência é: 3s",s3[0])
				}pare
			caso 4:
				se(s4[1]>0) {
					escreva("\nA camada de valência é: 4s",s4[0]," 4p",s4[1])
				}senao{
					escreva("\nA camada de valência é: 4s",s4[0])
				}pare
			caso 5:
				se(s5[1]>0) {
					escreva("\nA camada de valência é: 5s",s5[0]," 5p",s5[1])
				}senao{
					escreva("\nA camada de valência é: 5s",s5[0])
				}pare
			caso 6:
				se(s6[1]>0) {
					escreva("\nA camada de valência é: 6s",s6[0]," 6p",s6[1])
				}senao{
					escreva("\nA camada de valência é: 6s",s6[0])
				}pare
			caso 7:
				se(s7[1]>0) {
					escreva("\nA camada de valência é: 7s",s7[0]," 7p",s7[1])
				}senao{
					escreva("\nA camada de valência é: 7s",s7[0])
				}
		}
	}

	//Banco de dados dos nomes dos átomos.
	funcao cadeia nomeatomo(inteiro num){
		cadeia atomos[118] = {"Hidrogênio","Hélio","Lítio","Berílio","Boro","Carbono","Nitrogênio","Oxigênio","Flúor","Neônio","Sódio","Magnésio",
		"Alumínio","Silício","Fósforo","Enxofre","Cloro","Argônio","Potássio","Cálcio","Escândio","Titânio","Vanádio","Crômio","Manganês",
		"Ferro","Cobalto","Níquel","Cobre","Zinco","Gálio","Germânio","Arsênio","Selênio","Bromo","Criptônio","Rubídio","Estrôncio","Ítrio",
		"Zircônio","Nióbio","Molibdênio","Tecnécio","Rutênio","Ródio","Paládio","Prata","Cádmio","Índio","Estanho","Antimônio","Telúrio","Iodo",
		"Xenônio","Césio","Bário","Lantânio","Cério","Praseodímio","Neodímio","Promécio","Samário","Európio","Gadolínio","Térbio","Disprósio",
		"Hôlmio","Érbio","Túlio","Itérbio","Lutécio","Háfnio","Tântalo","Tungstênio","Rênio","Ósmio","Irídio","Platina","Ouro","Mercúrio",
		"Tálio","Chumbo","Bismuto","Polônio","Astato","Radônio","Frâncio","Rádio","Actínio","Tório","Protactínio","Urânio","Neptúnio","Plutônio",
		"Amerício","Cúrio","Berquélio","Califórnio","Enstênio","Férmio","Mendelévio","Nobélio","Laurêncio","Rutherfórdio","Dúbnio","Seabórgio",
		"Bóhrio","Hássio","Meitnério","Darmstádtio","Roentgênio","Copernício","Nihônio","Fleróvio","Moscóvio","Livermório","Tennesso","Oganessônio"}

		retorne atomos[num-1]
	}

	//Banco de dados sobre os símbolos dos átomos.
	funcao cadeia simboloatomo (inteiro num){
		cadeia simbolo[118] = {"H","He","Li","Be","B","C","N","O","F","Ne","Na","Mg","Al","Si","P","S","Cl","Ar","K","Ca","Sc","Ti","V","Cr",
		"Mn","Fe","Co","Ni","Cu","Zn","Ga","Ge","As","Se","Br","Kr","Rb","Sr","Y","Zr","Nb","Mo","Tc","Ru","Rh","Pd","Ag","Cd","In","Sn","Sb",
		"Te","I","Xe","Cs","Ba","La","Ce","Pr","Nd","Pm","Sm","Eu","Gd","Tb","Dy","Ho","Er","Tm","Yb","Lu","Hf","Ta","W","Re","Os","Ir","Pt",
		"Au","Hg","Tl","Pb","Bi","Po","At","Rn","Fr","Ra","Ac","Th","Pa","U","Np","Pu","Am","Cm","Bk","Cf","Es","Fm","Md","No","Lr","Rf","Db",
		"Sg","Bh","Hs","Mt","Ds","Rg","Cn","Nh","Fl","Mc","Lv","Ts","Og"}

		retorne simbolo[num-1]
	}

	//acha o periodo do atomo na tabela
	funcao achaperiodo (inteiro num){
		se (num==1 ou num==2){
			periodo=1
		}senao se(num>=3 e num<=10){
			periodo = 2
		} senao se(num>=11 e num<=18){
			periodo = 3
		}senao se (num>=19 e num<=36){
			periodo = 4
		}senao se(num>=37 e num<=54){
			periodo = 5
		}senao se (num>=55 e num<=86){
			periodo = 6
		}senao{
			periodo = 7
		}
	}

	funcao achagrupo (inteiro num){
		se (num==1 ou num==3 ou num==11 ou num==19 ou num==37 ou num==55 ou num==87){
			grupo=1
		}senao se(num==4 ou num==12 ou num==20 ou num==38 ou num==56 ou num==88){
			grupo=2
		}senao se(num==21 ou num==39 ou (num>=57 e num<=71) ou (num>=89 e num<=103)){
			grupo=3
		}senao se(num==22 ou num==40 ou num==72 ou num==104){
			grupo=4
		}senao se(num==23 ou num==41 ou num==73 ou num==105){
			grupo=5
		}senao se(num==24 ou num==42 ou num==74 ou num==106){
			grupo=6
		}senao se(num==25 ou num==43 ou num==75 ou num==107){
			grupo=7
		}senao se(num==26 ou num==44 ou num==76 ou num==108){
			grupo=8
		}senao se(num==27 ou num==45 ou num==77 ou num==109){
			grupo=9
		}senao se(num==28 ou num==46 ou num==78 ou num==110){
			grupo=10
		}senao se(num==29 ou num==47 ou num==79 ou num==111){
			grupo=11
		}senao se(num==30 ou num==48 ou num==80 ou num==112){
			grupo=12
		}senao se(num==5 ou num==13 ou num==31 ou num==49 ou num==81 ou num==113){
			grupo=13
		}senao se(num==6 ou num==14 ou num==32 ou num==50 ou num==82 ou num==114){
			grupo=14
		}senao se(num==7 ou num==15 ou num==33 ou num==51 ou num==83 ou num==115){
			grupo=15
		}senao se(num==8 ou num==16 ou num==34 ou num==52 ou num==84 ou num==116){
			grupo=16
		}senao se(num==9 ou num==17 ou num==35 ou num==53 ou num==85 ou num==117){
			grupo=17
		}senao se(num==2 ou num==10 ou num==18 ou num==36 ou num==54 ou num==86 ou num==118){
			grupo=18
		}
	}

	funcao achafamilia(inteiro num){
		se (num==1){
			familia="O hidrogênio não possiu uma família específica, em algumas tabelas ele é até representado separadamente"
		}senao se (num != 1 e grupo==1){
			familia="Metais Alcalinos"
		}senao se(grupo == 2){
			familia="Metais Alcalinos Terrosos"
		}senao se (grupo== 3 e (num<40)){
			familia="Metais de transição"
		}senao se (num>=57 e num<=71){
			familia="Lantanídeos"
		}senao se(num>=89 e num<=103){
			familia="Actnideos"
		}senao se(grupo==4){
			familia="Metais de transição"
		}senao se(grupo==5){
			familia="Metais de transição"
		}senao se(grupo==6){
			familia="Metais de transição"
		}senao se(grupo==7){
			familia="Metais de transição"
		}senao se(grupo==8){
			familia="Metais de transição"
		}senao se(grupo==9){
			familia="Metais de transição"
		}senao se(grupo==10){
			familia="Metais de transição"
		}senao se(grupo==11){
			familia="Metais de transição"
		}senao se(grupo==12){
			familia="Metais de transição"
		}senao se(grupo==13){
			familia="Grupo do Boro"
		}senao se (grupo==14){
			familia="Grupo do Carbono"  
		}senao se (grupo==15){
			familia="Grupo do Nitrogênio"
		}senao se (grupo==16){
			familia="Calcogênios"
		}senao se (grupo==17){
			familia="Halogênios"
		}senao se (grupo==18){
			familia="Gases Nobres"
		}
	}
}
