.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EDI 
XOR EAX, 876543437 
CDQ  
SETNBE DIL 
NOT BX 
SETNB DIL 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
OR DI, CX 
XOR RAX, 623331341 
OR AL, 8 
CMOVP RBX, RDI 
BTR RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], DI 
BTR RCX, -89 
AND SIL, 84 # instrumentation
MOV DL, CL 
CMOVNZ RAX, RAX 
SETP DIL 
OR EAX, -2077554316 
AND AX, 15374 
BTC RSI, -71 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], DI 
TEST AX, -32461 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, -105 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RBX] 
NOT RSI 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], AX 
CMOVNP AX, BX 
BT AX, 76 
AND DIL, 64 # instrumentation
CMOVNLE ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -67 
CMPXCHG RAX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
