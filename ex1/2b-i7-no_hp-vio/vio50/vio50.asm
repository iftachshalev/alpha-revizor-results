.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, 16937 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], RDI 
CLD  
OR DI, 0b1000000000000000 # instrumentation
BSR DX, DI 
AND DIL, -52 # instrumentation
SETBE CL 
SETLE BL 
BSWAP ESI 
XOR AL, -127 
SETNZ CL 
XOR AL, 67 
SETNL CL 
CDQ  
CMOVNBE RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RSI], 7 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EAX, 49511927 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG SIL, DL # instrumentation
CMOVO RDI, qword ptr [R14 + RCX] 
CWD  
LAHF  
OR AX, -11387 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], ECX 
CWDE  
TEST SIL, -74 
SETS AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RBX] 
OR EAX, 1651221124 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG AL, SIL # instrumentation
CMOVB RCX, qword ptr [R14 + RAX] 
CMOVNP EDI, ECX 
CMOVL BX, AX 
CMOVO DI, AX 
LEA RAX, qword ptr [RAX] 
LAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
