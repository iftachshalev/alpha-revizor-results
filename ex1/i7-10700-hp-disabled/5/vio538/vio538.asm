.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AL, SIL # instrumentation
AND SIL, 64 # instrumentation
LAHF  
OR RAX, 1492201566 
CMOVZ RBX, RDX 
SETNS DL 
SETL AL 
SETNL DL 
JNO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BT EDI, EDX 
AND SIL, -47 # instrumentation
CMOVNBE RAX, RBX 
CMOVL RCX, RSI 
TEST AL, -108 
MOVZX ECX, DI 
OR AL, -127 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -60 
MOVSX RSI, DX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR EDI, 26 
SETP DL 
MOV CL, 22 
AND RAX, -29 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND BL, CL 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], ECX 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RCX] 
BTR RBX, RCX 
BTS EAX, -105 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
BTS DX, DI 
MOVSX EBX, BL 
CMPXCHG RSI, RCX 
TEST RAX, -1985037085 
XADD RAX, RDI 
CBW  
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 0 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
