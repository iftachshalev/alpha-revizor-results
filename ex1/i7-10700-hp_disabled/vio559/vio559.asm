.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC DX, 88 
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
TEST EAX, EAX 
CMOVNP CX, SI 
XOR EAX, -233302661 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RAX] 
CMOVBE SI, SI 
CMOVNZ DX, AX 
XADD BX, AX 
BTR EBX, 76 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], 64 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 125 # instrumentation
BTC RDI, RCX 
CMOVZ BX, CX 
AND RAX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RAX], 0 
AND DIL, -82 # instrumentation
SETLE CL 
CMPXCHG RAX, RCX 
CMOVNB CX, SI 
MOV RSI, -1064300961998287784 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 3 
XOR AL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
CMOVNBE EDX, EAX 
AND AX, DI 
BTC SI, 30 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RCX] 
SETS BL 
AND RCX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RCX] 
BTS EDX, EAX 
SETNZ SIL 
CMOVNB EDX, EAX 
TEST DL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
