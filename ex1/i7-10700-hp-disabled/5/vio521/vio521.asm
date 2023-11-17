.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], DL 
CMOVNB CX, SI 
CMOVBE SI, CX 
AND RDX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDX] 
BT EAX, EBX 
AND DIL, -85 # instrumentation
CMOVNO EBX, EDI 
SETNP AL 
SETLE CL 
CMOVBE ESI, EDX 
CMOVS ESI, EAX 
XOR AX, -3432 
CMPXCHG DL, BL 
CMOVNBE EDI, EDX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -11 # instrumentation
CMOVP EAX, ECX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDX] 
CMPXCHG DI, SI 
BTC EDI, -13 
AND DIL, -54 # instrumentation
CMOVL EDX, EBX 
OR EAX, 685180589 
MOV BL, -80 
CMOVNS RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
SETNBE DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], SIL 
OR DI, CX 
SETNO DL 
AND RDX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDX], 1 
MOVSX RDX, DL 
AND EAX, 1933828242 
TEST BL, 18 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
