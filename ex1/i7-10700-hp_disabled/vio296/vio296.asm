.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RCX] 
MOVSX AX, SIL 
TEST RBX, -1694579551 
SETB DL 
AND DI, -50 
CMOVNO EDX, ECX 
CMOVNO EAX, EAX 
AND DX, DI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], -1409286302 
OR EAX, 64 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -5 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 1 
CMOVNBE BX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVNL RBX, RDX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
MOV RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RAX] 
SETO DL 
SETP AL 
MOVSX ESI, AL 
MOVZX SI, DL 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RAX], AX 
BTC RBX, RSI 
AND SIL, 63 # instrumentation
CMOVNO DI, DI 
MOVSX SI, BL 
OR DI, -71 
CMOVNLE DI, DI 
CMOVNZ AX, AX 
XOR DI, 28 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
