.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 18 
BT RCX, -100 
AND DIL, -18 # instrumentation
SETNLE DL 
SETNBE AL 
CMOVNBE BX, DX 
TEST BL, BL 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -20 # instrumentation
CMOVNP EBX, ECX 
XCHG RBX, RAX 
OR BL, 80 
MOVZX EDI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 25 # instrumentation
SETB CL 
CMOVNP EAX, ECX 
OR CL, AL 
TEST RDX, RSI 
XOR DL, BL 
SETNL DIL 
CMOVZ EBX, ECX 
CMOVP DX, DI 
TEST RAX, 554895191 
SETNO DL 
XOR AL, 21 
SETLE DL 
BT ECX, -49 
AND AL, SIL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR DI, 70 
AND SIL, -43 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], DI 
MOVZX ESI, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
