.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDI], 6 
STC  
XOR RBX, -31 
CMOVNO DI, DX 
CMOVNB BX, AX 
BTS RBX, RDX 
MOVSX EAX, BL 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
XOR DL, BL 
CLD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RAX], DI 
AND DL, -125 
OR EAX, -877086964 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EBX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 106 # instrumentation
CMOVP CX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RBX] 
XCHG BX, DI 
CWD  
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
MOVZX RDI, CX 
CMOVNZ DI, DX 
BTS EDI, 94 
AND SIL, -128 # instrumentation
CMOVNP CX, SI 
MOV SIL, SIL 
CMOVNS RDX, RSI 
CWD  
CMOVNBE EBX, ECX 
CMOVNP EDI, EBX 
XOR AL, 106 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], -50 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
