.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -45 # instrumentation
CMOVNO RBX, RBX 
BTC EAX, EBX 
AND DIL, -103 # instrumentation
SETNP AL 
CMOVNBE EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RDX 
OR DL, 19 
MOV EBX, 215511185 
AND RCX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RCX] 
SETP CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RBX], 6 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RAX] 
CMOVO RCX, RAX 
OR RCX, 67 
CMOVNS RCX, RAX 
CMOVNZ CX, SI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -24 # instrumentation
SETNO BL 
CMOVNL RCX, RDX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDI] 
CMOVLE ECX, EBX 
XOR RAX, RDX 
CMPXCHG BL, DL # instrumentation
LAHF  
BTS EBX, EDI 
TEST RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDI] 
TEST EAX, 839795383 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DL 
MOV RDX, RCX 
XADD CL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
CMC  
BTR RCX, 106 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
