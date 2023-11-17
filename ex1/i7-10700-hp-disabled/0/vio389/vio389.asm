.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 86 # instrumentation
SETO BL 
SETB CL 
SETNZ BL 
CMOVB DX, CX 
BTS EAX, ESI 
BTC BX, 76 
AND SIL, -98 # instrumentation
CMOVNP SI, CX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT SIL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
JMP .bb_main.2 
.bb_main.2:
BT BX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RSI], 2 
OR AL, 61 
CMOVS EBX, EBX 
SETNP BL 
XOR CX, BX 
NOT RBX 
TEST AX, BX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTS EAX, -72 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], DI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 32739 
CMOVB DX, DI 
XOR EDI, 86 
XOR ECX, -66 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DX 
XCHG CL, DL 
NOT EDI 
CMOVO RSI, RCX 
CMOVBE EAX, EDI 
BTS AX, -61 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMPXCHG ECX, ECX 
OR DIL, 119 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
