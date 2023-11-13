.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
CMOVO RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], -24 
CMOVL BX, BX 
AND RSI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RSI], 3 
OR RAX, -135884314 
AND RCX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RCX] 
CLD  
CMOVNBE ESI, ESI 
AND BL, BL 
SETNP SIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDI] 
CMOVO RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 2 
MOVSX EAX, DL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -118 # instrumentation
SETNZ CL 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], 122 
SETLE DL 
CMOVNL AX, DI 
TEST DIL, -40 
OR DX, 59 
AND RSI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RSI] 
CMOVL BX, BX 
MOV AX, -7217 
CMOVS EDI, EDX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND DIL, 7 # instrumentation
SETO CL 
AND RBX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RBX] 
MOV ECX, ECX 
SETLE AL 
TEST DIL, 54 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
