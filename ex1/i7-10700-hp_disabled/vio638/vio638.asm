.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STC  
XCHG BL, BL 
OR RAX, 1438766260 
XADD RCX, RCX 
SETNLE AL 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], EAX 
CDQ  
BSWAP ESI 
SETNO DL 
SETNZ CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
BTR RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DIL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -122 # instrumentation
MOVSX RDI, DI 
CMOVS RBX, RBX 
XOR DL, -76 
BTR RBX, RAX 
AND DX, CX 
XCHG CX, AX 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], -64 
MOVSX EAX, BX 
MOV CL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
TEST RAX, -863042563 
OR RAX, 383247293 
OR CL, BL 
OR EDX, 38 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], 1319605089 
SETZ AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RSI] 
BT RDI, -22 
AND AL, 29 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
