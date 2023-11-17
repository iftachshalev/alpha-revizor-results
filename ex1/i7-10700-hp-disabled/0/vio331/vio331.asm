.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDX, SI 
AND SIL, -34 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTC dword ptr [R14 + RAX], ECX 
SETNBE BL 
AND AX, 1365 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RBX] 
BTR DX, -24 
SETBE BL 
AND RBX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RBX] 
CLD  
SETBE CL 
AND RDX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RDX], 7 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
NOT DL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
XOR SIL, -127 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
SETBE AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RBX] 
NOT BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RSI] 
NOT BL 
TEST AL, 37 
SETNB SIL 
NOT DIL 
CBW  
AND AL, BL 
CDQ  
XOR DIL, -48 
XADD RBX, RDI 
CMOVNS RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
