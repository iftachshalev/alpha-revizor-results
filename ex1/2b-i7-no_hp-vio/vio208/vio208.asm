.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -128 # instrumentation
CMOVNLE ESI, EDX 
SETNS AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
BTR RDX, RCX 
AND RSI, RSI 
CMOVNZ EDX, EAX 
BTR DI, 115 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
BTS EDI, -24 
AND SIL, 83 # instrumentation
CMOVL CX, DI 
CMOVS RDX, RAX 
MOVSX SI, CL 
CMOVNLE EAX, EDI 
NOT RDX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX ESI, DI 
XADD CX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], 94 
CMPXCHG ECX, ECX 
CMOVBE RBX, RDI 
CMOVB ECX, ECX 
SETNBE BL 
MOV AL, -3 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EAX 
SETNZ SIL 
XOR RAX, 59 
CMOVP EDX, EDI 
BTC CX, 89 
AND DIL, 22 # instrumentation
SETO SIL 
MOV RBX, RDX 
BTS DX, BX 
AND DIL, 6 # instrumentation
SETNLE DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
