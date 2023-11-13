.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 41 # instrumentation
CMOVZ ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], EAX 
LEA DX, qword ptr [RDI + RAX + 12241] 
TEST EDX, -1160618380 
TEST RDI, RSI 
XOR AL, 6 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
OR SI, 42 
CMPXCHG EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RBX] 
BT RBX, -26 
AND SIL, 43 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RCX] 
SETS AL 
CMOVNLE EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 3 
XOR EAX, 57403537 
SETS SIL 
SETNL CL 
BT RDI, 115 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RAX] 
SETNBE DL 
CMOVNL DX, DI 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
BTS SI, 74 
XADD ECX, ECX 
SETNZ CL 
CMOVNL BX, AX 
AND EAX, 1740154465 
MOVZX DI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
