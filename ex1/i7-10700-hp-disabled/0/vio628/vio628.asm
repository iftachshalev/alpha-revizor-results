.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD CX, DX 
CMPXCHG DIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RDI 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDX], AX 
SETNBE CL 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 13 
BTS BX, BX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EAX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RBX] 
XOR SIL, -8 
BTS RBX, RDI 
MOV DL, CL 
CMOVBE ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG AL, SIL # instrumentation
MOVSX AX, byte ptr [R14 + RBX] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -13268 
JMP .bb_main.2 
.bb_main.2:
XOR RAX, -964728443 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
CMOVNP EBX, EBX 
AND DI, -54 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RCX] 
CMOVNP AX, CX 
CMOVP EAX, EDI 
SETL AL 
BTC BX, -10 
XOR RAX, -549181528 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
