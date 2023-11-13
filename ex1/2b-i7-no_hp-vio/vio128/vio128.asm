.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
XOR AL, 34 
MOVSX EDX, CL 
SETB SIL 
SETL CL 
TEST CX, 28679 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], 2 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], 114 
CMOVL RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RCX], AX 
AND RCX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RCX], 7 
AND SIL, 76 # instrumentation
CMOVNO CX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], 72 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RSI] 
SETBE AL 
XOR DX, DI 
XOR EAX, 109399091 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
CMOVNO CX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RDX] 
BTC RBX, RCX 
AND SIL, -55 # instrumentation
CMOVNL RCX, RCX 
OR CL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], 69 
TEST ESI, -1431857999 
XCHG RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RDX], 2 
CMOVBE RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
