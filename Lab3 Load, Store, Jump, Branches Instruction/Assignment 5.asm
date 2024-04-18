.data 

A: .word 1, 2, 5, 8, 9, 10, 3, 4, 6  

.text 

    li $s1, -1 #i = -1 

    la $s2, A #s2 stores the address of array 

    li $s3, 9 #number of elements of A 

    li $s4, 1 #step 

    li $s5, 0 #sum 

loop: 

    add $s1,$s1,$s4 #i=i+step 

    add $t1,$s1,$s1 #t1=2*s1 

    add $t1,$t1,$t1 #t1=4*s1 

    add $t1,$t1,$s2 #t1 store the address of A[i] 

    lw  $t0,0($t1)  #load value of A[i] in $t0  

    add $s5,$s5,$t0 #sum=sum+A[i] 

    blt $s1,$s3,loop #if s1<s3 go to loop
