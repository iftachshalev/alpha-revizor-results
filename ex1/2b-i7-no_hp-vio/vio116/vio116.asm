.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 49 # instrumentation
CMOVO EAX, ECX 
CMOVZ EBX, EBX 
TEST AX, -13533 
CMOVNP RBX, RAX 
SETNP DIL 
CMOVNS EAX, EAX 
SETNS DIL 
SETNB DL 
MOV SIL, AL 
XCHG RCX, RAX 
XCHG BL, BL 
LEA CX, qword ptr [RDX + RDI + 42521] 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RCX], 3 
XOR DIL, 63 
OR DIL, 47 
SETNL CL 
BTS DX, 63 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG EAX, EBX 
OR DIL, -20 
CMOVNZ ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RCX] 
CMOVNO RSI, RAX 
BT ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDI], 1 
AND DIL, 14 # instrumentation
CMOVP RAX, RBX 
SETNS BL 
SETBE CL 
SETP BL 
CMOVLE BX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
