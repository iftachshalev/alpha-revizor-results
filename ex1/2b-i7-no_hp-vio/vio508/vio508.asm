.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR BL, DL 
BTS RDI, -5 
OR RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RCX] 
TEST EAX, 1887041417 
CMC  
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], AX 
SETNP AL 
CMOVNL EBX, EBX 
XADD BX, CX 
CMOVNP RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RBX] 
AND BL, 24 
CMC  
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], AL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
TEST BL, DL 
CMOVBE BX, CX 
MOVZX RDI, DX 
CMOVNZ SI, CX 
MOV AL, 80 
OR EAX, 1820133633 
BTS EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 59 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RSI] 
BTR ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], -107 
TEST CL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
