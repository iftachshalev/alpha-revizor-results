.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
NOT DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RCX 
CMOVLE EDX, ECX 
CDQ  
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -2 # instrumentation
CMOVB RCX, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RBX] 
TEST RAX, -146064279 
BT RBX, RCX 
CMPXCHG AL, CL # instrumentation
AND DIL, 91 # instrumentation
LAHF  
CMOVNB RDI, RCX 
TEST BL, AL 
CMPXCHG CX, SI 
XOR SIL, 55 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ESI 
AND DIL, 71 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, 102 # instrumentation
CMC  
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND AL, 23 
XOR RAX, -829359021 
CMPXCHG DL, BL 
MOV DL, DL 
JMP .bb_main.3 
.bb_main.3:
BT RCX, -108 
TEST SIL, 47 
CMOVNBE RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RCX] 
AND DIL, 2 # instrumentation
STD  
CMOVBE DI, DX 
TEST BL, 113 
CWD  
MOVSX AX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
