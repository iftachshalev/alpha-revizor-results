.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -79 # instrumentation
CMOVNBE DX, DI 
OR RAX, -566913950 
XOR EAX, -1842441045 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], ECX 
OR AX, 32438 
MOVSX EBX, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RSI] 
BTC AX, 113 
TEST BL, -12 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR SI, AX 
STC  
CMOVLE ECX, EBX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 117 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 71 # instrumentation
CMOVL RDI, RSI 
CMOVL RBX, RBX 
SETNZ AL 
TEST EAX, -792424271 
TEST EAX, EDX 
XOR AL, SIL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BT RCX, -3 
AND SIL, 55 # instrumentation
MOVSX BX, CL 
CMOVLE ESI, EDI 
SETNLE AL 
SETNL DL 
OR BL, -107 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
AND BL, -117 
BTC RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 26 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
