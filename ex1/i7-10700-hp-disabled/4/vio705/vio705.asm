.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, 36736536 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], AL 
AND ECX, 72 
TEST RSI, RAX 
XCHG EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -33 # instrumentation
SETB AL 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR RCX, 5 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RSI] 
BT SI, SI 
TEST RAX, 1178491939 
CMOVS DI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RBX] 
MOV SI, DI 
SETNP CL 
XADD RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -98 # instrumentation
SETLE SIL 
CMOVZ AX, AX 
TEST RDI, RDX 
CMOVNBE RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
OR SIL, 70 
CMOVNO RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDX] 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
NOT RDI 
NOT RCX 
XCHG AL, DL 
XOR CL, -117 
CMOVP DI, CX 
STD  
AND RAX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
