load Computer.hdl,
output-file Q2.out,
compare-to Q2.cmp,
output-list time%S2.4.2 reset%B2.1.2 ARegister[0]%D3.7.3 DRegister[0]%D3.7.3 PC[]%D2.4.2 RAM16K[16]%D2.7.2 RAM16K[17]%D2.7.2 RAM16K[18]%D2.7.2;

ROM32K load Q2.hack,
output;

// I have taken:
// RAM16k[16]=a
// RAM16k[17]=b
// RAM16k[18]=c

// First test, a=5,b=3,--------> c should be 2
set RAM16K[16] 5,
set RAM16K[17] 3,

repeat 12 {
    tick, tock, output;
}

// reseting PC to 0
set reset 1,
tick, tock, output;

// Second test, a=4,b=5,---------> c should be 1
set RAM16K[16] 4,
set RAM16K[17] 5,

set reset 0,

// Second run 
repeat 12 {
    tick, tock, output;
}


