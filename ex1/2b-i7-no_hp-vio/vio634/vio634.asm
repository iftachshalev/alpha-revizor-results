.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, RDX 
SETP AL 
TEST AL, -3 
SETZ DL 
SETNB AL 
XADD BX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -88 
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
CMOVS CX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RAX] 
SAHF  
CMOVZ CX, DI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 41 # instrumentation
MOV DL, -75 
SETLE SIL 
CMOVNO BX, CX 
NOT AX 
CMPXCHG DI, SI 
BTS RCX, 126 
NOT BX 
OR RCX, 13 
CMOVNBE EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], BL 
CMOVNS RCX, RBX 
TEST RAX, -1770973594 
CMPXCHG DX, CX 
XADD CX, BX 
CMOVP RDX, RBX 
MOVZX EAX, AL 
BTR DI, SI 
CMOVBE EDX, EAX 
XCHG CL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
