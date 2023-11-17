.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -64 # instrumentation
CMOVBE EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RCX] 
OR AX, -2 
SETO AL 
AND RCX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RCX] 
XOR RBX, RDX 
AND AL, -13 
CMOVNP DI, DI 
BT AX, 97 
OR AL, -107 
XOR AL, CL 
OR CX, -36 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
AND DIL, -57 # instrumentation
LEA RCX, qword ptr [RBX] 
SETP AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDI] 
XCHG SI, SI 
AND AL, -115 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
JMP .bb_main.2 
.bb_main.2:
BTS SI, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
CMOVNO AX, BX 
XOR BX, -64 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], -30 
TEST EAX, -1557658837 
CMOVLE ECX, EDI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -31 # instrumentation
CMOVBE DI, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDI 
TEST AX, -18327 
CMOVNLE DI, DX 
CMOVNBE EDX, EAX 
XOR AX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
