.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RDX, 112 
SETLE DL 
XCHG AL, DL 
AND RBX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RBX] 
TEST DIL, BL 
CLC  
BTC AX, -97 
AND RBX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RBX], SI 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOV RDI, RDX 
XADD DL, AL 
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR DIL, -124 
OR SIL, DL 
XOR AL, -113 
CMPXCHG EDX, EDX 
AND EDX, EDX 
CMOVNS SI, AX 
AND DIL, -67 
JMP .bb_main.3 
.bb_main.3:
OR BL, BL 
BT RBX, -1 
CMOVB RSI, RAX 
MOV RDX, 2654975851847166326 
SETNZ CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], -743249733 
SETLE CL 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 120 # instrumentation
SETP AL 
AND SIL, -98 
SETNO AL 
CMC  
CMOVNS RSI, RSI 
LEA EDX, qword ptr [RBX + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
