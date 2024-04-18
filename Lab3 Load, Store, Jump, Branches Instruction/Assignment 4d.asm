start: 

li $s4,1#m=1 

li $s5,2#n=2 

add $s6,$s4,$s5 # y= m+n 

li $s1,9 #i=9 

li $s2,2 #j=2 

add $s3,$s1,$s2 # x = i+j 

slt $t0,$6,$s3 # y<x 

bne $t0,1,else # branch to else if t0 not equal to 1 

addi $t1,$t1,1 # then part: x=x+1 

addi $t3,$zero,1 # z=1 

j endif # skip “else” part 

else: 	addi $t2,$t2,-1 # begin else part: y=y-1 

add $t3,$t3,$t3 # z=2*z 

endif:   
