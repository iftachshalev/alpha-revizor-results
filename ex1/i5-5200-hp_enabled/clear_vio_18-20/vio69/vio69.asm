.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], AX 
XADD EDX, EBX 
AND RDX, -116 
AND DIL, 81 
CMOVZ DX, CX 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 7 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], -65 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 3 
MOV DIL, -63 
AND CL, BL 
MOV DI, 27760 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], EBX 
CMOVS ECX, EBX 
TEST RBX, 993584229 
XOR RAX, -405859192 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -50 # instrumentation
SETNP CL 
TEST AL, BL 
MOVZX RDI, DX 
XOR DIL, 0 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], 4 
SETL DIL 
MOV BL, AL 
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RDX], SI 
JMP .bb_main.3 
.bb_main.3:
BT RSI, 8 
TEST RDX, RSI 
SAHF  
CMOVO AX, SI 
STC  
SETNP AL 
SETNL AL 
XCHG BL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
