programa
{
	
	funcao inicio()
	{
		inteiro num //eletrons
		inteiro numbackup
		inteiro s1, s2[2],s3[3],s4[4],s5[4],s6[3],s7[2] //s = subnível

		s1 = 0
		s2[0] = 0
		s2[1] = 0
		s3[0] = 0
		s3[1] = 0
		s3[2] = 0
		s4[0] = 0
		s4[1] = 0
		s4[2] = 0
		s4[3] = 0
		s5[0] = 0
		s5[1] = 0
		s5[2] = 0
		s5[3] = 0
		s6[0] = 0
		s6[1] = 0
		s6[2] = 0
		s7[0] = 0
		s7[1] = 0

		escreva("Informe quantos elétrons tem o átomo:\n")
		leia (num) limpa() numbackup =num

		se (num - 2 >= 0){
			s1 = 2
			num = num - 2
		}senao {
			s1 = num
			num = 0
		}
		se (num - 2 >= 3){
			s2[0] = 2
			num = num - 2
		}senao {
			s2[0] = num
			num = 0
		}
		se (num - 6>= 3){
			s2[1] = 6
			num = num - 6
		}senao{
			s2[1] = num
			num = 0
		}
		se (num - 2 >= 0 ){
			s3[0] = 2
			num = num - 2
		}senao {
			s3[0] = num
			num = 0
		}
		se (num - 6 >= 0){
			s3[1] = 6
			num = num - 6
		}senao{
			s3[1] = num
			num = 0
		}
		se (num - 2 >= 0){
			s4[0] = 2
			num = num - 2
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
		se (num - 6 >= 0){
			s4[1] = 6
			num = num - 6
		}senao{
			s4[1] = num
			num = 0
		}
		se (num - 2 >= 0){
			s5[0] = 2
			num = num - 2
		}senao {
			s5[0] = num
			num = 0
		}
		se (num - 10 >= 0){
			s4[2] = 10
			num = num - 10
		}senao {
			s4[2] = num
			num = 0
		}
		se (num - 6 >= 0){
			s5[1] = 6
			num = num - 6
		}senao{
			s5[1] = num
			num = 0
		}
		se (num - 2 >= 0){
			s6[0] = 2
			num = num - 2
		}senao {
			s6[0] = num
			num = 0
		}
		se (num - 14 >= 0){
			s4[3] = 14
			num = num - 14
		}senao {
			s4[3] = num
			num = 0
		}
		se (num - 10 >= 0){
			s5[2] = 10
			num = num - 10
		}senao {
			s5[2] = num
			num = 0
		}
		se (num - 6 >= 0){
			s6[1] = 6
			num = num - 6
		}senao{
			s6[1] = num
			num = 0
		}
		se (num - 2 >= 0){
			s7[0] = 2
			num = num - 2
		}senao {
			s7[0] = num
			num = 0
		}
		se (num - 14 >= 0){
			s5[3] = 14
			num = num - 14
		}senao {
			s5[3] = num
			num = 0
		}
		se (num - 10 >= 0){
			s6[2] = 10
			num = num - 10
		}senao {
			s6[2] = num
			num = 0
		}
		se (num - 6 >= 0){
			s7[1] = 6
			num = num - 6
		}senao{
			s7[1] = num
			num = 0
		}
		
		escreva("\n\n1s",s1)
		escreva("\n2s",s2[0]," 2p",s2[1]) 
		escreva("\n3s",s3[0]," 3p",s3[1]," 3d",s3[2])
		escreva("\n4s",s4[0]," 4p",s4[1]," 4d",s4[2]," 4F",s4[3])
		escreva("\n5s",s5[0]," 5p",s5[1]," 5d",s5[2]," 5F",s5[3])
		escreva("\n6s",s6[0]," 6p",s6[1]," 6d",s6[2])
		escreva("\n7s",s7[0]," 7p",s7[1])
		escreva("\n\nO número de elétrons informado foi: ",numbackup)
		
	}
}
