.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV BL, 66 
TEST AX, 16700 
CMOVNBE ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 114 
CMOVO RCX, RDX 
MOVSX DX, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
BTS DX, 28 
BSWAP EDX 
AND RSI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RSI], 4 
AND DIL, -118 # instrumentation
SETNLE DL 
XOR SIL, 4 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], CX 
BT AX, 11 
XOR AX, 29863 
CMOVNO SI, DX 
BSWAP RCX 
CMOVNO ESI, EDX 
XADD DI, SI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
NOT AX 
CMOVNP RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDI] 
BTS ECX, 64 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
BTS RSI, RCX 
AND DIL, 28 # instrumentation
CMOVLE RAX, RCX 
XOR AX, 115 
CMOVL RDI, RDI 
AND AL, 50 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
