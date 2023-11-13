.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
LEA EAX, qword ptr [RDI + RDX] 
TEST DIL, -53 
CMOVL RBX, RBX 
SETNZ DL 
MOVZX EBX, CL 
TEST AL, CL 
MOVZX EAX, BL 
BTC BX, -99 
AND DIL, 91 # instrumentation
CMOVNZ RBX, RSI 
NOT CL 
NOT RCX 
CMOVNLE AX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], ECX 
CMOVB EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RCX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -28 # instrumentation
SETNLE CL 
TEST BL, -48 
BTC RCX, RAX 
AND DI, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDX] 
OR CX, -72 
AND RSI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RSI] 
AND AX, -32 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
TEST AL, 43 
XOR BL, -118 
NOT SIL 
AND AX, -4981 
BSWAP ESI 
AND RCX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RCX] 
AND DX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
