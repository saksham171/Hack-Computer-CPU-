//  int i = 1;
//  int sum = 0;
//  while(i < 100){
//      sum = sum + i;
//      i = i + 1;
//  }
(LOOP)    
    @a
    D = M
    @100    
    D = D - A
    @END
    D ; JGT
    @a
    D = M
    @b
    M = D + M
    @a
    M = M + 1
    @LOOP
    0 ; JMP
(END)  
    @END
    0 ; JMP