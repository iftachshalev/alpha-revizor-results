.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST CL, 69 
AND RDI, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RDI] 
OR CL, 56 
XOR AL, 63 
NOT BL 
LEA EDX, qword ptr [RBX + RSI + 39777] 
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -1 # instrumentation
SETS CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RCX] 
XOR BX, -48 
CMOVP EDX, ECX 
XADD DL, BL 
TEST RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
XOR RCX, 118 
SETL BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 7 
JMP .bb_main.2 
.bb_main.2:
AND RDI, RDI 
SETO CL 
AND RDX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BT dword ptr [R14 + RDX], EBX 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], 109 
OR EDX, 27 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
SETNZ AL 
JMP .bb_main.3 
.bb_main.3:
XOR EAX, -1795868453 
XOR RBX, RBX 
OR AL, -60 
CMOVS AX, DI 
AND CL, DL 
AND SIL, AL 
AND BL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
