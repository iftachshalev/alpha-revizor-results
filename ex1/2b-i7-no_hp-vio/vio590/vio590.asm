.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -93 # instrumentation
SETP AL 
MOV RBX, 1380585501858093906 
NOT DIL 
AND RBX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RBX] 
MOV AL, AL 
SETNB AL 
BTR DI, -45 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
BT AX, 4 
CMOVB SI, DI 
CWD  
BTR RCX, -63 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DI 
CMOVNO EBX, ESI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -73 # instrumentation
CMOVS RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], 4 
AND RDX, RDX 
XCHG EAX, EDX 
SETB AL 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 4 
TEST BL, DL 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], 40 
SETL DL 
CMOVLE SI, AX 
TEST AX, 5257 
SETNLE BL 
XCHG AL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDX] 
TEST AX, 15679 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
