.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 78 # instrumentation
XCHG RAX, RAX 
CMOVZ BX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RSI] 
CMOVS EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -182138210 
MOVZX EDX, DL 
MOVZX CX, CL 
CMOVL BX, DX 
CMOVNZ ECX, ESI 
XOR DL, 125 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, 10309 
SETNZ AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 6 
AND SIL, 105 # instrumentation
CMOVL DI, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], 3 
AND DIL, 29 # instrumentation
NOP  
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BT RDX, RDI 
AND DIL, -49 # instrumentation
CMOVNS EDI, EAX 
XCHG EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RCX 
CMOVNB DX, BX 
XCHG RBX, RAX 
BT DI, -22 
BTS EAX, 41 
BTR CX, -115 
BTC DI, 110 
CMPXCHG RDI, RBX 
XCHG ECX, ECX 
MOVSX RSI, AL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
