.data  

A: .word 9,8,7,6,5,4,3,2,1 

.text 

li $s1, -1 #i=-1 

la $s2, A  #s2 stores the address of array			 

li $s3, 9  #number elements of A 

li $s4, 1  #step 

li $s5, 0  #sum 	 

loop: 

add	$s1,$s1,$s4 #i=i+step 

add 	$t1,$s1,$s1 #t1=2*s1 

add 	$t1,$t1,$t1 #t1=4*s1 

add 	$t1,$t1,$s2 #t1 store the address of A[i] 

lw 	$t0,0($t1) #load value of A[i] in $t0 

add 	$s5,$s5,$t0 #sum=sum+A[i] 

bne 	$s1,$s3,loop #if i != n, go to loop 
