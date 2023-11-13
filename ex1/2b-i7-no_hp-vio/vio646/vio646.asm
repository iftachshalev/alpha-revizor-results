.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 75 # instrumentation
SETNBE CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDI] 
CMOVB RBX, RBX 
TEST AL, -31 
BT AX, DX 
CMOVNBE BX, SI 
BTC EAX, -127 
XADD AX, DI 
MOV AL, -64 
CMOVBE EDX, EBX 
SETS DIL 
CMOVLE ECX, ECX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX RDX, DI 
OR DI, -117 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RBX] 
SETNBE SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -59 
CMOVNB RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RDI 
OR DIL, DL 
LEA RDX, qword ptr [RAX + RDX + 50679] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], -107 
XCHG RSI, RBX 
BTC RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDX] 
BTC RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], 1 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], 1911320057 
TEST ECX, -191006504 
NOT RDX 
SETO BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
