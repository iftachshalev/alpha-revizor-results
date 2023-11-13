.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -16 # instrumentation
SETO DL 
CMOVNB RDX, RDI 
BTR RBX, -9 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], AX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDX 
NOT RAX 
MOV BL, CL 
CDQ  
TEST DL, BL 
OR EAX, 1187182458 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], 19917 
CMOVL DI, SI 
OR AL, CL 
MOVZX DX, DL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], 49 
MOVZX RSI, CX 
AND RBX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RBX] 
LEA RDI, qword ptr [RCX + RDX + 49167] 
XOR RAX, 2091796154 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -29 
BSWAP EBX 
CMOVP BX, DI 
MOV RDX, -8510677771635157679 
CMOVNBE EDX, ESI 
NOT ESI 
BTS ECX, 44 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], 6 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDI] 
CMOVNL ESI, EDX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
