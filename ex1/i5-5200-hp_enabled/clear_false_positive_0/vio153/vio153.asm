.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BX, DX 
LEA DI, qword ptr [RBX + RBX] 
MOVZX EDX, BL 
CMOVNO ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDX] 
XADD EAX, ECX 
XADD CL, CL 
SETBE CL 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DL, -108 
AND RAX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTS qword ptr [R14 + RAX], RCX 
BT RAX, RAX 
AND DIL, 78 # instrumentation
CBW  
CMOVNZ DI, DI 
XCHG EDI, ECX 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 5 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], SI 
CMOVBE RDX, RDI 
CMPXCHG BX, DX 
JMP .bb_main.3 
.bb_main.3:
MOV DI, 2139 
AND RAX, -958710942 
CMOVL RDI, RCX 
XADD AL, BL 
SETP BL 
CMPXCHG BL, DIL 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RCX] 
XOR SIL, 96 
SETNO SIL 
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BT word ptr [R14 + RCX], CX 
CDQ  
TEST CX, -1377 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], 100 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
