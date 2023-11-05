.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -38 # instrumentation
MOV AX, CX 
BT SI, 124 
CMOVZ DX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], 4 
AND ESI, EDX 
SETNB CL 
BTS EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DL 
SETNLE CL 
LAHF  
AND AL, 120 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], SI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -93 # instrumentation
SETNS CL 
CMOVB RDI, RBX 
NOT BX 
BTS ESI, 29 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RSI 
XOR RSI, RSI 
NOT RDX 
XCHG CX, AX 
SETP DL 
CMOVP DI, SI 
BTC DI, AX 
SETNB DIL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], -44 
SETNBE AL 
SETLE DL 
OR AX, DX 
NOT ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
SAHF  
LAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
