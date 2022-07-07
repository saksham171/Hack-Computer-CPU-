load Computer.hdl,
output-file Q1.out,
compare-to Q1.cmp,
output-list time%S2.4.2 reset%B2.1.2 ARegister[0]%D3.7.3 DRegister[0]%D3.7.3 PC[]%D2.4.2 RAM16K[16]%D2.7.2 RAM16K[17]%D2.7.2 RAM16K[18]%D2.7.2 RAM16K[19]%D2.7.2;

ROM32K load Q1.hack,
output;

// I have taken:
// RAM16k[16]=a
// RAM16k[17]=b
// RAM16k[18]=c
// RAM16k[19]=d

// First test, a=5,b=3,c=1,---------> d should be 7
set RAM16K[16] 5,
set RAM16K[17] 3,
set RAM16K[18] 1,

// First run 
repeat 8 {
    tick, tock, output;
}

// reseting PC to 0
set reset 1,
tick, tock, output;

// Second test, a=20,b=9,c=27,---------> d should be 2
set RAM16K[16] 20,
set RAM16K[17] 9,
set RAM16K[18] 27,

set reset 0,

// Second run 
repeat 8 {
    tick, tock, output;
}

