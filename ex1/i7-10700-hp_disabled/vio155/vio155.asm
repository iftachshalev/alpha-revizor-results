.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR BL, BL 
CMOVNP BX, DI 
XOR ESI, -20 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], ECX 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
BTC RDX, RAX 
STC  
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], SI 
MOV AL, CL 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
CMOVNZ RAX, RAX 
OR BX, 0b1000000000000000 # instrumentation
BSF DX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
OR CX, SI 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 6 # instrumentation
CMOVLE RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RSI], DI 
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
XOR RDI, 110 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RDX] 
CMOVNLE RDI, RSI 
CMPXCHG RDI, RBX 
AND ECX, -119 
TEST CX, DI 
CMOVNB AX, AX 
SETNS SIL 
SETZ DIL 
TEST RAX, -152449249 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
