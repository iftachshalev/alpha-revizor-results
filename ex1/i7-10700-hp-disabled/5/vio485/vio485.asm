.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 6 # instrumentation
CMOVNBE DX, BX 
SETNZ AL 
MOV SI, 2280 
AND EAX, -1210965440 
SETL DL 
CMOVNB RCX, RCX 
XCHG DI, AX 
SETNLE CL 
CMOVB RBX, RDI 
CMOVNLE AX, DX 
SETNP DL 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], BX 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], AL 
OR AL, -87 
XOR AX, 7173 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RBX, RSI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, -106 
NOT BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDX] 
XCHG EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
BTS RCX, RDX 
AND DL, -47 
OR DL, -12 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RDX] 
SETZ DL 
MOV EDX, EDX 
CMOVNLE DI, BX 
XOR EAX, -753086824 
CMOVNLE ESI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
