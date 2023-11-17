.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, 0b1000000000000000 # instrumentation
BSR DX, DX 
MOVSX EDI, DL 
TEST RDI, RSI 
TEST EAX, 1847713895 
AND AX, -10474 
SETBE AL 
NOT RSI 
XCHG CL, CL 
TEST EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RDX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 96 # instrumentation
CMOVZ EBX, ECX 
AND RAX, -1293184961 
XADD ECX, EDI 
TEST BX, -5888 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], SI 
XOR EAX, -1330932779 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST RDI, 245457643 
XCHG RBX, RAX 
BT RAX, 107 
XOR EBX, -13 
BT DX, DI 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], CX 
OR EAX, -1453808558 
AND AX, 81 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RCX] 
BTC RBX, RBX 
AND SIL, -47 # instrumentation
SETP CL 
CMOVNL DI, SI 
CMOVB EBX, EDI 
OR AX, 11998 
AND EAX, -99798677 
SETNP DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
