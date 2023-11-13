.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD CL, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RBX] 
SETS AL 
SETO DL 
CMPXCHG BX, DI 
XOR CX, -73 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDX] 
CMOVNZ RCX, RAX 
BTC AX, 108 
AND DIL, 121 # instrumentation
NOT BL 
SETNO DL 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BT qword ptr [R14 + RDX], RDI 
MOV BX, CX 
CMOVNZ BX, CX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -105 # instrumentation
SETO DL 
CMOVS RBX, RCX 
TEST AX, -16353 
BTR ECX, 63 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDX] 
MOV CX, 11732 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], -82 
CMOVO BX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDI] 
XOR AX, 87 
MOVZX DI, AL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDI 
AND DIL, -74 # instrumentation
CMOVNB RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDX] 
CMOVZ EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
TEST DL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
