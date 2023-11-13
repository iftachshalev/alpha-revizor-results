.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -105 # instrumentation
CMOVLE RCX, RSI 
XOR AL, -70 
OR RCX, 106 
SETNP SIL 
TEST AL, 66 
XCHG RDI, RAX 
NOT AL 
SETNP BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDI] 
LEA RAX, qword ptr [RSI + RAX] 
MOV DL, -85 
MOV EBX, EDX 
TEST AL, SIL 
CLC  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDX] 
XOR AX, -35 
CMOVBE RBX, RSI 
BT RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], 42 
SETLE CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDI] 
CMOVBE RDI, RBX 
BTC ECX, -106 
TEST RAX, 173757292 
SETNZ AL 
CMOVLE EBX, EDX 
AND CL, DL 
SETNZ DIL 
SETBE DL 
AND RCX, -95 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RSI] 
XADD DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
