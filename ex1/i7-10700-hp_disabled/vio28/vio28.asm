.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -80 # instrumentation
CMOVO EBX, EDX 
BTC BX, BX 
CMOVB EBX, EAX 
TEST RCX, RCX 
TEST ESI, -485840090 
AND RAX, -788327481 
CMOVB RBX, RCX 
BT ESI, 43 
XOR DIL, -21 
CMPXCHG CL, AL 
XCHG DL, DL 
SETL BL 
MOV ESI, EBX 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 125 # instrumentation
MOVSX RCX, AL 
CMOVNB CX, BX 
SETNS CL 
BTS RDI, -67 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
AND SIL, -14 # instrumentation
CMOVNO RBX, RAX 
SETS DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], 2 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -83 # instrumentation
SETNLE CL 
TEST RAX, -405725946 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 49 
AND RAX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RAX] 
SETNB AL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], DI 
NOT BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 124 
CMOVNL ECX, ECX 
MOVSX SI, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
