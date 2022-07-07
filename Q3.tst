load Computer.hdl,
output-file Q3.out,
compare-to Q3.cmp,
output-list time%S2.4.2 reset%B2.1.2 ARegister[0]%D3.7.3 DRegister[0]%D3.7.3 PC[]%D2.4.2 RAM16K[16]%D2.7.2 RAM16K[17]%D2.7.2;

ROM32K load Q3.hack,
output;

// I have taken:
// RAM16k[16]=i
// RAM16k[17]=sum

// i=1, sum=0
set RAM16K[16] 1,
set RAM16K[17] 0,

// First run
repeat 1408{
    tick, tock, output;
}

