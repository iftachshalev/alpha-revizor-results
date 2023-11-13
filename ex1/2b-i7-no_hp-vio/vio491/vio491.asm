.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWDE  
MOVZX ECX, CL 
BTR SI, CX 
OR AX, 20296 
NOP  
CMOVNLE RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RSI], AX 
XOR CX, BX 
CMOVNB RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RCX 
STD  
CMOVLE SI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], ECX 
LEA RCX, qword ptr [RDI] 
CMPXCHG BL, AL 
CMOVZ DX, SI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DX 
SETNO BL 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], SI 
TEST EAX, -793591025 
MOVSX EBX, BL 
MOV BL, -47 
BT RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], DL 
TEST RDX, 1970569469 
NOT ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RBX] 
XOR RCX, -89 
TEST RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], -119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
