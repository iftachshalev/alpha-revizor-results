.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RBX, 6 
NOT RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
MOVZX SI, BL 
CMOVZ EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], -10 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
BTS EBX, 106 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RAX] 
SETNO CL 
SETNLE SIL 
TEST AL, 112 
AND RAX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RAX], DX 
CMPXCHG AL, AL # instrumentation
AND SIL, -49 # instrumentation
LAHF  
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CDQ  
AND RBX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RBX], 2 
OR RAX, RDI 
AND DI, CX 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDX] 
SETO DIL 
OR AL, 80 
SETNZ AL 
BTR SI, SI 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], -59 
CMOVNB DI, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RCX] 
AND RDI, RCX 
CMOVP EDX, EAX 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVSX EDX, CL 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
OR RCX, 100 
SETNO BL 
AND RDI, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
