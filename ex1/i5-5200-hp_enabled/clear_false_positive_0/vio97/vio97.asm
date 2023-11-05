.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RCX, -61 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RSI] 
CMOVNLE RAX, RBX 
AND EDX, 119 
OR AX, -1481 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTS qword ptr [R14 + RCX], RSI 
CMOVNBE RCX, RDX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG CL, AL 
STC  
MOVSX BX, CL 
XOR RBX, -102 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], ECX 
SETNB SIL 
CMOVNBE RCX, RCX 
OR EAX, -1617400298 
CDQ  
BTR SI, DI 
TEST EAX, 1130936261 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], 0 
AND SIL, -112 
CMOVNLE RDI, RBX 
XOR AX, 81 
XOR AX, -1534 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RCX], DI 
BTC RDI, 5 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDX], 1 
CMOVNBE RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ESI 
CMOVNO CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
