.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RBX] 
SETS AL 
AND RBX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RBX] 
CMOVNB AX, DI 
CMC  
TEST DIL, BL 
XCHG CX, BX 
XCHG DI, AX 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -117 # instrumentation
CMOVNP EDX, EBX 
MOVSX EDI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
STC  
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], 40 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, -12 # instrumentation
CMOVNS EDI, EDX 
BT DI, BX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
MOVZX DI, AL 
SETBE CL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RCX] 
XCHG AL, CL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ESI 
MOVZX CX, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RDI] 
CMOVL AX, SI 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RAX] 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
