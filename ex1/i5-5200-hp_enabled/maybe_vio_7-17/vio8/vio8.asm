.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, -20524 
SETNB AL 
CLC  
CMPXCHG SIL, CL 
MOV EDX, EAX 
BTS CX, CX 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 55 # instrumentation
CMOVBE ECX, EAX 
XOR RAX, 815133060 
NOT BL 
AND RAX, -1948129597 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], -118 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDI] 
OR EAX, ECX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RSI 
CLC  
AND RSI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RSI], DI 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
BTS RAX, -2 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RSI] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR CL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
XCHG CL, BL 
TEST EAX, 949527137 
SETO CL 
AND BX, DX 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDX], RDX 
CMPXCHG RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
MOVSX DI, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], 124 
CMOVNZ CX, SI 
CMOVNS AX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
