.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 84 # instrumentation
SETS DIL 
XCHG DI, CX 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
TEST CX, -12563 
XOR RAX, -1536120839 
AND RCX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BT dword ptr [R14 + RCX], EBX 
AND DIL, 90 # instrumentation
CMOVLE RSI, RDI 
JMP .bb_main.1 
.bb_main.1:
LEA ECX, qword ptr [RCX + RAX] 
BT RCX, RBX 
XOR CL, AL 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
BTS ESI, -65 
BTR DI, DI 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG RSI, RAX 
XOR RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RAX] 
MOVZX CX, DL 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
MOV EAX, 1345388239 
SETP BL 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, 40 # instrumentation
CMOVZ ECX, EAX 
SETB DIL 
TEST DIL, DIL 
SETL AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
LEA RBX, qword ptr [RCX + RAX + 2438] 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BTR RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
