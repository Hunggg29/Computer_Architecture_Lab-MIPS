start: 

li $s1,9 #i=9 

li $s2,2 #j=2 

add $s3,$s1,$s2 # x = i+j 

ble $s3,$zero,else # branch to else if x<=0 

addi $t1,$t1,1 # then part: x=x+1 

addi $t3,$zero,1 # z=1 

j endif # skip “else” part 

else: 	addi $t2,$t2,-1 # begin else part: y=y-1 

add $t3,$t3,$t3 # z=2*z 

endif: 
