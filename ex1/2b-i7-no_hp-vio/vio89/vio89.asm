.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CL, AL 
AND RCX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RCX], 6 
XCHG SIL, BL 
AND RAX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RSI] 
CMOVNBE EDI, EDX 
BTS SI, 1 
AND SIL, -94 # instrumentation
NOT RSI 
NOT CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -14 # instrumentation
SETS CL 
XCHG DL, BL 
CMOVZ EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RAX] 
AND RDI, RBX 
XOR EAX, -663561954 
OR RAX, -1357124819 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], AX 
XOR DIL, -100 
AND AX, 23714 
SETLE CL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], 106 
CMOVLE RDX, RCX 
BT CX, -38 
CMOVNZ RDI, RCX 
XOR RAX, -869997321 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
BTR RAX, -34 
AND DIL, 93 # instrumentation
XCHG RAX, RAX 
SETNS BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RCX] 
TEST RAX, 99760859 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
