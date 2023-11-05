.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -85 # instrumentation
SETNLE BL 
SETNLE BL 
MOVSX RSI, SI 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], DI 
CMOVNLE DI, CX 
CMOVNB CX, AX 
XOR CL, BL 
XOR DIL, -127 
CMOVNB EDI, EAX 
MOV CL, -68 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], EDX 
BT ESI, EDI 
OR BX, DX 
MOVSX RSI, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], -75 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 1990801014 
BT EBX, ESI 
XCHG DX, AX 
CWD  
XOR EAX, -1964855177 
SETNB AL 
OR RCX, RSI 
BTC RDI, 49 
AND RBX, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
SETNLE DL 
CBW  
OR BL, CL 
BTC AX, DI 
AND SIL, -1 # instrumentation
SETL SIL 
TEST EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTS dword ptr [R14 + RDX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
