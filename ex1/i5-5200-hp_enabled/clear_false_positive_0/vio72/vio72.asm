.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 80 # instrumentation
CMOVZ RDI, RSI 
CMOVZ AX, DI 
SETNB AL 
CMOVNB EDI, ESI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -119 # instrumentation
CMOVS RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RBX] 
AND DI, 75 
CMPXCHG ESI, ECX 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR RDX, 59 
NOT RCX 
MOV DL, CL 
XOR RAX, 1903061454 
XADD RCX, RDX 
MOVZX CX, BL 
CMOVZ SI, DI 
AND AL, AL 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RSI] 
XOR EAX, -1215393933 
LEA RBX, qword ptr [RDX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RCX 
TEST RAX, 2055851829 
AND RBX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RBX], 0 
OR DX, 120 
TEST RSI, RCX 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMPXCHG DL, SIL 
BTC BX, -75 
AND SIL, 62 # instrumentation
MOVZX EDI, DL 
CMOVNO CX, DI 
LEA CX, qword ptr [RCX] 
LEA RDX, qword ptr [RCX + RSI] 
TEST DL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
