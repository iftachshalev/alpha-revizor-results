.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DIL, -37 
AND RAX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RAX] 
BTS RSI, RSI 
BTS RBX, RBX 
SETNB BL 
AND BL, -6 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
TEST AL, 116 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 114 # instrumentation
CMOVNZ ECX, EDI 
NOP  
BTR RDI, -44 
AND DIL, -18 # instrumentation
CMOVNO RSI, RDI 
MOVZX EBX, CL 
BTR RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RCX 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -38 # instrumentation
CMOVNO RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], EAX 
XOR RAX, -150884519 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 67 
NOT SIL 
OR RDI, -46 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
AND SIL, 38 # instrumentation
CMOVNLE RCX, RAX 
MOVZX EDI, AX 
SETNBE BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -8 # instrumentation
CMOVLE ECX, ESI 
BTR DI, 92 
TEST AX, 19086 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
AND ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
