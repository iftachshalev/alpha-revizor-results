.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RDI, -102 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 1 
TEST EAX, -1833769984 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], -50 
AND RBX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RBX] 
MOV EDX, EDI 
CMOVLE RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTS dword ptr [R14 + RDI], EBX 
CMOVBE EBX, EAX 
CMOVNBE EDX, EAX 
SETBE SIL 
AND RBX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RBX] 
NOT DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], -114 
CMOVNBE ESI, EDI 
SETLE AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], -31 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RSI] 
SETO DL 
TEST AL, -56 
CMOVNBE BX, AX 
CMOVNL RCX, RSI 
BTR ESI, 47 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], -61 
BTC BX, -80 
XCHG BX, SI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], SI 
CMOVLE RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
