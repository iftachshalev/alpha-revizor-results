.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 7 # instrumentation
CMOVNBE DI, DX 
CMOVNL RSI, RBX 
SETNL DL 
JMP .bb_main.1 
.bb_main.1:
LEA RAX, qword ptr [RSI + RBX] 
AND RAX, RSI 
CMOVNLE BX, SI 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMPXCHG BL, DL 
SETNBE CL 
CMOVLE ECX, ECX 
SETNP CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDI] 
CMOVNS ESI, EDI 
NOT DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RSI], 4 
MOV CL, -7 
JMP .bb_main.3 
.bb_main.3:
XCHG EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
CMOVNZ EBX, EDX 
MOVZX RCX, AL 
AND RDX, 4 
JMP .bb_main.4 
.bb_main.4:
BTR RDI, -105 
AND DIL, 114 # instrumentation
CMOVNO RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
AND DIL, 14 # instrumentation
SETS AL 
LEA ESI, qword ptr [RAX + RDI] 
CMOVNB RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], 74 
AND EDX, -82 
BTC RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
