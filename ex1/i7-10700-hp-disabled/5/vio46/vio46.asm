.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 103 # instrumentation
CMC  
XOR RDX, 0 
NOT DL 
TEST DIL, 11 
MOV DIL, -1 
MOV ECX, 1625735564 
CBW  
CMOVNLE RBX, RBX 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, -63 # instrumentation
SETO BL 
XOR AX, -19066 
CMOVNL EDX, ESI 
SETNL AL 
BTR CX, SI 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DIL 
BTR RDX, RBX 
CMOVBE RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
XOR SI, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], -72 
CWD  
MOVSX EDI, DIL 
BTC AX, DX 
AND SIL, -87 # instrumentation
CMOVLE SI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RDI] 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 95 # instrumentation
MOVSX RSI, CL 
CMOVP ESI, EAX 
BTS DX, -20 
AND SIL, 122 # instrumentation
CMOVBE ECX, EBX 
SETNZ BL 
CMOVNS DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
