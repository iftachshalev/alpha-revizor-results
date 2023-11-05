.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -86 # instrumentation
CMOVB EAX, EBX 
MOV EBX, EAX 
XOR EDX, -56 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], 39 
XOR AL, 62 
OR EAX, -1981262965 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], 1074697277 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RSI] 
OR AX, -25358 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RCX 
CMOVLE EAX, EDI 
LEA ECX, qword ptr [RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], CL 
MOVSX EBX, BX 
CMOVNBE RDX, RDI 
BSWAP ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 4 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
MOV ESI, -1307269447 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], RCX 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMPXCHG BL, CL 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDX] 
CMOVB DX, AX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDX] 
AND SIL, 44 # instrumentation
SETNBE DL 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
XCHG EDI, EBX 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTS qword ptr [R14 + RSI], RCX 
SETZ AL 
MOVSX BX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
