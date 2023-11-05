.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -25 # instrumentation
BT CX, 120 
SETNZ DL 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 2 
AND SIL, 59 # instrumentation
CMOVB RSI, RCX 
SETNO DL 
CLD  
OR EDI, ESI 
CMC  
CMOVNB EDI, EDI 
STC  
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], CX 
OR EAX, 856296453 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
MOVZX ESI, DL 
MOVZX DX, DL 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RCX] 
CWDE  
TEST SIL, -12 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
CMOVNP RSI, RBX 
CMPXCHG EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
BTS RDI, RBX 
CMC  
BT EDI, -34 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
