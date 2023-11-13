.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG BX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], -29 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
OR AL, -14 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RAX 
MOVSX ESI, BL 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EAX 
SETS CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], DIL 
OR EAX, -226452202 
CMPXCHG BL, DL 
CMOVNL AX, DX 
CMOVO EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 6 
AND SIL, -106 # instrumentation
SETO SIL 
SETLE DL 
SETNLE AL 
CMPXCHG ESI, EDI 
BTC RSI, -52 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
OR EAX, 60043835 
OR RAX, -1914611494 
CMOVLE AX, DI 
XOR BX, -86 
BTC DI, 15 
XOR AL, -86 
MOVZX EDI, BL 
OR RAX, 1828234273 
AND BX, DX 
BTS RCX, 57 
MOVSX AX, BL 
XOR DI, 122 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
