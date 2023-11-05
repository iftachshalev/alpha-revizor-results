.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 120 # instrumentation
CMOVO RSI, RDI 
SETO AL 
SETS AL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
XADD DI, DI 
OR BX, CX 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTR dword ptr [R14 + RBX], ECX 
CMPXCHG RSI, RBX 
OR DI, DI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
TEST RAX, 667654275 
SETNO BL 
BT DI, -102 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDX] 
SETNLE CL 
XADD CL, BL 
SETL BL 
CMOVNS AX, AX 
SETNP AL 
SETLE DL 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], RBX 
JMP .bb_main.2 
.bb_main.2:
BT BX, DI 
XOR RAX, 1266613675 
XOR AL, AL 
XCHG DL, DL 
XCHG RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTR qword ptr [R14 + RCX], RAX 
AND DIL, 51 # instrumentation
SETB DL 
SETNLE DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], 0 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
