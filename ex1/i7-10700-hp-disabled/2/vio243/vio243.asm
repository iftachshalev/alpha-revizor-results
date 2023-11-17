.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR EDX, EDX 
AND DIL, -65 # instrumentation
CMOVZ RBX, RSI 
SETNL SIL 
CMOVNLE RSI, RAX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
JMP .bb_main.1 
.bb_main.1:
AND CL, BL 
BSWAP ESI 
SETNL AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
AND AL, -50 
XOR AL, 27 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], 2 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -85 # instrumentation
CMOVP CX, CX 
AND ESI, EDI 
SETLE DL 
AND RBX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RBX] 
OR DIL, -122 
AND RBX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTS word ptr [R14 + RBX], AX 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, -123 # instrumentation
SETNZ DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RSI] 
SETNS BL 
CMOVLE BX, BX 
SETNP CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RSI 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -81 # instrumentation
CMOVO DI, DX 
BSWAP RDX 
TEST DI, AX 
BTS RCX, -123 
AND DIL, -49 # instrumentation
SETNP CL 
CMOVZ CX, AX 
BT CX, -21 
LEA RDX, qword ptr [RDI + RSI + 59225] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
