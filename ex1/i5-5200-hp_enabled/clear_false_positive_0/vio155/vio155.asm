.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], CX 
BTR CX, CX 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 104 
XOR SIL, -27 
SETP DIL 
SETNB BL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RCX 
XOR RAX, 734595191 
XOR CL, -105 
SETBE DIL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR RSI, -70 
LEA RAX, qword ptr [RCX] 
CMPXCHG AX, AX 
XCHG EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDI] 
CMOVNBE EDI, EBX 
SETNB SIL 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], 19 
TEST RBX, 604184310 
AND ECX, -73 
BTS DX, 91 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTC ECX, 60 
XOR DIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RAX] 
CMOVLE EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DIL 
AND DL, -120 
CMOVLE RCX, RDX 
BT ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
