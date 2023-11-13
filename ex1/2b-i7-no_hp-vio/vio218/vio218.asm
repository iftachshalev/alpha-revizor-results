.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -69 # instrumentation
SETLE CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], 4 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], RDI 
BTC RSI, 125 
BTC ESI, 58 
NOT DL 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -1132291778 
BTC RBX, RAX 
XOR BX, 22 
CMOVL EDI, EDI 
BTR EBX, EBX 
AND SIL, 7 # instrumentation
SETS CL 
XADD BL, BL 
CMOVNB EAX, EAX 
OR RCX, RDI 
SETNS SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], ESI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -117 # instrumentation
MOVSX AX, DL 
CMOVP AX, SI 
MOVSX RDX, AX 
XOR AL, 88 
SETNLE CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], -115 
XOR DIL, SIL 
XOR EAX, ESI 
BTC SI, -80 
AND DIL, -69 # instrumentation
SETS CL 
SETNS CL 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
