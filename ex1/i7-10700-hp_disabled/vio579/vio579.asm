.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RAX, RSI 
AND DIL, -21 # instrumentation
CMOVO CX, BX 
AND RBX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], DX 
AND DIL, -8 # instrumentation
CMOVNS ESI, EDI 
CMOVLE RDX, RSI 
CMOVNL DI, AX 
SETBE BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], 73 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR AX, DX 
MOVSX ESI, AX 
AND RBX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RBX], 6 
TEST ESI, 637760793 
SETBE DL 
SETO CL 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
OR BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDX 
CMPXCHG AL, BL 
STC  
MOVSX EBX, CL 
MOVZX DX, AL 
TEST RAX, 1678600078 
STD  
CMPXCHG CX, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RDX] 
STC  
AND RDI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
