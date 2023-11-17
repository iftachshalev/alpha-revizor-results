.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], -685633174 
MOV ESI, ESI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EBX 
MOVSX CX, DL 
MOVSX EDI, CL 
OR RDI, 104 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 1698590271 
BT ECX, EDX 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 61 
XCHG BX, AX 
CMOVNP EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RAX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], DL 
CMOVP RSI, RAX 
SETB CL 
CMOVNBE SI, CX 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
AND DIL, -12 # instrumentation
SAHF  
CMOVNLE CX, DI 
JMP .bb_main.3 
.bb_main.3:
BTR SI, -14 
LEA BX, qword ptr [RDI + RDI + 19556] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RCX] 
SETNLE SIL 
CMOVNS RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RBX] 
SAHF  
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR RBX, -12 
CMOVBE RSI, RDI 
SETNLE BL 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
