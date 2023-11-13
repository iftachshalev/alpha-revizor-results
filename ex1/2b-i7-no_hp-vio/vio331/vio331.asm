.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], CX 
SETP DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RCX] 
STC  
TEST RAX, RDX 
BT RCX, 116 
AND SIL, -106 # instrumentation
SETBE AL 
MOVSX EBX, DIL 
CMOVNS BX, DX 
BTC RAX, -97 
AND SIL, 111 # instrumentation
CMOVNP EDX, ECX 
BTR CX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG BL, DL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDI] 
MOVSX RSI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
XCHG RBX, RSI 
NOP  
BTR EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RBX] 
MOVSX ESI, DL 
MOVZX RAX, AX 
OR DIL, -64 
TEST EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], RSI 
CMOVZ RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], -2 
SETBE SIL 
OR EAX, 1618429942 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
