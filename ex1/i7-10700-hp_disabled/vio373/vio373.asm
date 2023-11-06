.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
MOVSX EDI, DL 
AND RCX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RCX] 
SETNLE BL 
SETNLE SIL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
SETO DL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX EBX, AL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EAX 
XADD AL, BL 
CMC  
XCHG DIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], BL 
OR DL, -57 
STD  
CMOVP EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
SETNZ CL 
TEST ECX, ESI 
MOVZX DI, DL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 67 # instrumentation
SETL AL 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], 47 
BT DI, BX 
BTS CX, DX 
SETBE DL 
MOVZX RSI, AL 
AND RBX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RBX] 
AND DIL, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RDI 
CMOVNL RAX, RDI 
SETB CL 
CMOVO EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
