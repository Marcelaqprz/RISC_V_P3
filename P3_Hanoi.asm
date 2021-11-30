#Oscar Angel cardenas Auilar
#Marcela Quintero Perez

.eqv i t1
.eqv discs s0
.text
#numero de discos
addi discs,zero,3
#inicio apuntadores
lui  s1,0x10010 #torre origen
addi s2,s1,4#Torre aux
ori s3,s1,8#Torre destino

addi s2,s2,-32 #Torre aux
addi s3,s3,-32 #Torre destino

#colocamos disco en torre origen
add i,zero,discs # iterador
add s9,zero,s1
init:
sw i,0(s9)
addi s9,s9,0x20
addi i,i,-1
blt zero,i,init

addi s9,s9,-32
#parametros de funcion
#addi sp,sp,-8
add a0,zero,discs #n
add a1,zero,s9 #origen
add a2,zero,s3 #dest
add a3,zero,s2 #aux
jal ra, Hanoi
jal ra, exit


Hanoi:
#todo sp
addi sp, sp, -8
sw ra, 4(sp)
#comprobamos caso base
addi s10,zero,1
beq a0,s10,baseCase
#else
addi a0,a0,-1 #n-1
sw a0, 0(sp)
#hanoi(n-1,o,a,d)

#en este primer paso del caso en esta llamada el origen siempre es el mismo pero cambios en la torres aux y dest
#en cada llamada aux ser? dest y dest ser? aux variando en los casos en que llame esta funci?n
#n => #a0

#Cambiando apuntadores de pilas
add s7,zero,a2 # s7  = destino
add a2,zero,a3 #dest = aux
add a3,zero,s7 #aux  = destino
	
#Llamando a Hanoi(n-1,org,aux,dest)
jal ra, Hanoi
	
lw a0, 0(sp)
lw ra, 4(sp)
	
add s7, zero, a2 #ty = aux
add a2, zero, a3 #aux = dest
add a3, zero, s7 #dest = aux
#dest.push(o.pop());
lw s8,0(a1) # s8 = o.pop();
sw zero,0(a1)
addi a1,a1,-0x20
addi a2,a2,0x20
sw s8,0(a2)#d.push(s8);
	

#en este paso del caso en esta llamada el dest siempre es el mismo pero habra cambios en las torres aux y orig
#en cada llamada aux sera orig y origin sera aux variando en los casos en que llame esta funcion
add s7,zero,a1 #s7 = org
add a1,zero,a3 #org = aux
add a3,zero,s7 #aux = org
		
jal ra,Hanoi #hanoi(n-1,aux,dest,origin)
	
add s7, zero, a1 #ty = aux
add a1, zero, a3 #aux = dest
add a3, zero, s7 #dest = aux
jal ra, endHanoi
#} //End of Else
	
baseCase:
#Mov disc from orig to dest
lw s8,0(a1) # s8 = o.pop();
sw zero,0(a1)
addi a1,a1,-0x20
addi a2,a2,0x20
sw s8,0(a2)#d.push(s8);
	
endHanoi:
#terminando Hanoi
lw a0, 0(sp)
lw ra, 4(sp)
addi sp, sp, 8
jalr zero, ra, 0	
exit:
