.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RCX] 
CMOVP SI, SI 
MOVZX EBX, AL 
XCHG BX, AX 
CMOVNP AX, DI 
CWD  
JMP .bb_main.1 
.bb_main.1:
MOV BL, BL 
MOV BX, CX 
BTC RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -1938765160 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RAX] 
OR DI, 0b1000000000000000 # instrumentation
BSR BX, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 94 
BTC BX, AX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], CL 
MOVZX RCX, DI 
BTS RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], -7 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
BTS EDI, ECX 
MOV RAX, RBX 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RSI] 
CMOVB ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
BTR BX, 103 
XADD AL, DIL 
NOT DL 
OR BX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
