.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DIL, 78 
XCHG RDI, RAX 
NOT ECX 
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
AND DIL, -64 # instrumentation
CMOVNLE EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 4 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], -58 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -75 # instrumentation
CMOVNLE ECX, ECX 
CMOVNBE CX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], 94 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], ECX 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, -54 # instrumentation
CMOVBE DI, DI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], -113 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDX] 
BT ECX, EBX 
AND DIL, 107 # instrumentation
CMOVLE RBX, RCX 
CMOVZ RDX, RSI 
MOVZX SI, DL 
SETNLE DL 
BTR EDI, EBX 
TEST EAX, EDX 
MOV RDI, RDI 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTC EAX, ESI 
AND DIL, -127 # instrumentation
CMOVP EAX, EAX 
SETNO DL 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], AX 
SETB AL 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], AX 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
