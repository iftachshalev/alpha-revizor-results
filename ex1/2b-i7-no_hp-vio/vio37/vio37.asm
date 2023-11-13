.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
OR DI, 0b1000000000000000 # instrumentation
BSR AX, DI 
BTR RCX, 60 
AND SIL, 33 # instrumentation
MOVSX ESI, DL 
CMOVNL ESI, EBX 
OR DL, -21 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], ESI 
OR RCX, -37 
CMOVNLE RCX, RSI 
XADD CL, AL 
CMOVNB ESI, EBX 
CMOVNO EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
SETNB AL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 80 # instrumentation
CMOVP CX, BX 
SETNS DL 
BTC RBX, RDI 
AND SIL, -35 # instrumentation
CMC  
CMOVNO RAX, RBX 
SETP AL 
CMOVL RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EBX 
MOV AL, -34 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDX] 
SETLE DL 
SETNB DL 
CMOVNO RAX, RCX 
SETNS SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
SETNBE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
