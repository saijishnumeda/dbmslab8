	.data
result: .asciiz "\n The resulting value of y  is :"
	.text
	.globl main
	
main:
	addi $t3 , $t3  , 1
	addi $t4 , $t4 , 0
	beq  $t3 , $zero , loop1
	beq  $t3 , 1 ,  loop2
	bgt  $t3  , 1 , loop3
	addi $t4 , $t4 , 100
	move  $a0 , $t4
        li $v0 ,1
	syscall
 

loop1:
	addi $t4 , $t4 ,1
	li $v0 ,4
	la $a0, result
	syscall
	move $a0 , $t4
        li $v0 ,1
	syscall
	li $v0 , 10
	syscall

loop2:
	addi $t4 , $t4 , -1
	li $v0 ,4
	la $a0, result
	syscall
	move $a0 , $t4 
        li $v0 ,1
	syscall
 	li $v0 , 10
	syscall
loop3:
	addi $t4 , $t4 , 100
	li $v0 ,4
	la $a0, result
	syscall
	move $a0, $t4
	li $v0 , 1
	syscall
	li $v0 10
	syscall