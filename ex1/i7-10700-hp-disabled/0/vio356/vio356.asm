.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RBX] 
CLD  
SAHF  
CMOVNO EDI, EDX 
CMOVNBE BX, SI 
JMP .bb_main.1 
.bb_main.1:
TEST AX, -3676 
BTR RCX, RBX 
AND SIL, -113 # instrumentation
CMOVNBE EAX, EDX 
XCHG RSI, RDI 
SETNZ AL 
CMOVNLE AX, SI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RAX] 
AND SI, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], SIL 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, 44 # instrumentation
CMOVNZ ECX, ESI 
CMPXCHG CL, DL 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], EDI 
BT DX, -101 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RBX] 
SETB CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RSI] 
CMOVNBE ESI, ESI 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 118 # instrumentation
CMOVO RCX, RCX 
CMOVO ESI, EDI 
SETNP DL 
OR EAX, -148982176 
SETNBE CL 
CMPXCHG DL, AL 
CMOVNBE RAX, RAX 
CMOVZ RDI, RAX 
BTS DI, 35 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
