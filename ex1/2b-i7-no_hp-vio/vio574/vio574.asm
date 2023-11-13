.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -94 # instrumentation
BTR RSI, RDI 
CMOVBE SI, DI 
SETNB DL 
OR EAX, -1663445157 
CMC  
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], AL 
SETNP AL 
BTR RCX, -114 
BTS RBX, RCX 
AND DIL, -22 # instrumentation
CMOVP RBX, RDX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
CDQ  
MOVSX SI, CL 
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
MOV RCX, RAX 
BT ESI, 107 
XOR DL, -115 
CMOVNZ EDX, ECX 
CMOVZ ESI, EBX 
CMOVP RSI, RDX 
CMOVO RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RAX] 
XOR RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], 19 
BTR EAX, EAX 
XCHG EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
