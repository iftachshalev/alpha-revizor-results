.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDX] 
CMOVP RDI, RCX 
CMPXCHG RSI, RSI 
CDQ  
CMPXCHG DL, AL 
CMOVNLE DI, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], 5 
MOVZX ECX, SI 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], BL 
TEST DIL, -68 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -3 # instrumentation
MOV RAX, RAX 
MOV DL, 124 
CMOVNL EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
CMOVL RDX, RDI 
BTS RDI, 66 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], BL 
BTC ESI, ECX 
SETNBE BL 
XOR DX, -73 
MOV ESI, EBX 
XOR RCX, -89 
CMOVLE RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 14014 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], -59 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], AX 
NOT CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
