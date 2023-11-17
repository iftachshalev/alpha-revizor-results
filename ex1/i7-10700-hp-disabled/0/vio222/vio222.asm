.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DIL, CL 
MOVZX DI, DIL 
XOR AL, 124 
OR AL, DL 
SETL AL 
OR DIL, 84 
CMOVB RSI, RDX 
SETNS AL 
SETL AL 
CMOVNP EBX, EAX 
AND EAX, -1169346532 
SAHF  
CMOVNB EDX, EDX 
XOR AL, BL 
NOP  
MOV AL, 119 
NOT EDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 126 # instrumentation
SETNS DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], -22 
XADD RCX, RCX 
TEST SIL, 74 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
CMOVBE EDI, EBX 
LEA DI, qword ptr [RCX + RBX + 45567] 
TEST DL, 27 
CMOVNBE SI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDX] 
CMOVNLE EBX, EDX 
XCHG EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RDI 
CMOVP EDI, EDX 
SETNLE DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
