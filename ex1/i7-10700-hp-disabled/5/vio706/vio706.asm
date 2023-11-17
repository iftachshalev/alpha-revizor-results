.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 42 # instrumentation
SETBE BL 
SETNL DL 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -23 
MOVZX BX, CL 
BT ESI, -3 
BTR BX, BX 
MOVSX SI, BL 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], DX 
AND RAX, -870325828 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], SIL 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], CX 
TEST ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDX] 
XOR RDX, -73 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RDX 
BT BX, SI 
CLC  
CMOVNB RDX, RDX 
JMP .bb_main.3 
.bb_main.3:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EBX 
AND DIL, 75 # instrumentation
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
MOVZX CX, DL 
OR SI, AX 
MOVZX RBX, DI 
CMOVNBE RSI, RCX 
XADD DI, DX 
MOV AL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RAX], ESI 
SETL CL 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -104 # instrumentation
CMOVNB RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RAX] 
XOR DIL, 76 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
