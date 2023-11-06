.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -60 # instrumentation
SETLE AL 
MOVZX RAX, BL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], BX 
CMOVB EAX, ECX 
SETL DL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RSI] 
LEA RAX, qword ptr [RCX + RCX] 
LEA DX, qword ptr [RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], DI 
SETO CL 
SETB DL 
BTC RBX, 46 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RAX] 
BTS RSI, 35 
AND SIL, -71 # instrumentation
NOT EAX 
CMOVP CX, AX 
XOR EDX, EDI 
CMPXCHG CL, CL 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 108 # instrumentation
SETS AL 
BTS ESI, -127 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], CX 
XOR SI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
CMOVNLE EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 0 
AND SIL, -45 # instrumentation
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
AND SIL, 56 
XCHG CL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
