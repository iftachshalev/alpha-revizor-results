.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -74 # instrumentation
SETBE DIL 
XCHG SIL, SIL 
OR BX, 91 
CMPXCHG DI, AX 
SETNB AL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 115 # instrumentation
SETNO AL 
AND BL, 1 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RSI] 
BT ECX, EBX 
CMPXCHG AX, AX 
OR EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTS word ptr [R14 + RDX], DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDX] 
NOP  
BTS DX, -102 
TEST SI, -15429 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -109 # instrumentation
CMC  
XADD ECX, EDI 
BTS DI, CX 
BTC EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDI] 
STD  
SETZ BL 
CMPXCHG BL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], SI 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX RSI, AL 
NOT CL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DIL 
SETNZ DL 
CMOVNP RSI, RCX 
MOV AL, BL 
OR EDX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
