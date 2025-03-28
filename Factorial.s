.data

etiket :  .asciiz "Lütfen faktöriyel almak için sayı girin : "
etiket1 : .asciiz "sonuç : "

.text

main:

li 	$v0,4
la	$a0,etiket
syscall

li	$v0,5
syscall
move	$a0,$v0

move	$t2,$a0
move	$t3,$a0

farktor:

addi	$t2,$t2,-1	
mul	$t3,$t2,$t3

bne	$t2,2,farktor

li	$v0,4
la	$a0,etiket1
syscall

li	$v0,1
move	$a0,$t3
syscall


li $v0,10
syscall
