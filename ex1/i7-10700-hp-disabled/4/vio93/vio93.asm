.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -107 # instrumentation
CMOVBE EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RSI] 
CMOVLE AX, CX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BSWAP ECX 
MOV EDX, -774645941 
AND RDI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDI] 
AND RSI, -61 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -98 # instrumentation
SETBE CL 
BTS RBX, RAX 
OR AL, -91 
OR BX, 72 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], -104 
JMP .bb_main.3 
.bb_main.3:
TEST SIL, CL 
TEST AL, -45 
CMPXCHG DIL, DL 
AND RAX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RAX] 
TEST AL, 82 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RCX] 
SETNZ BL 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], AL 
CMOVNL AX, DI 
SETNL DL 
CMOVNO EDI, ECX 
BT RSI, RCX 
TEST EAX, ECX 
SETNZ CL 
AND RAX, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], CL 
SETB CL 
TEST RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTS qword ptr [R14 + RSI], RCX 
AND DIL, -89 # instrumentation
SETNS AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
