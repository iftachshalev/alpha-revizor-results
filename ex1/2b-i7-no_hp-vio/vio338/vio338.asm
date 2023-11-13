.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RAX, RBX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
AND SIL, 117 # instrumentation
CMOVLE ESI, EDX 
CMPXCHG EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], -31 
SETS DL 
XCHG SI, SI 
CMOVBE EAX, ESI 
CMOVS SI, DI 
SETS DIL 
CMOVNL DI, CX 
BT RBX, -115 
XOR EAX, 897151466 
SAHF  
MOVZX CX, AL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], 82 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], CL 
BTS EDI, 79 
AND DIL, 104 # instrumentation
CMOVNO RDX, RDI 
SETL SIL 
CMOVO BX, BX 
SETNL DL 
AND RCX, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RCX] 
SETNS DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RSI] 
MOV DL, CL 
TEST RAX, -690155657 
TEST EAX, 1309625272 
XOR CL, -12 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDX] 
TEST AL, AL 
SETNLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
