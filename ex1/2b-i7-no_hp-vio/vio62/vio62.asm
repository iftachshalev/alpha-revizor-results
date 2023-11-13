.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RSI, DL 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 121 
AND AL, -119 
CMOVNBE RDX, RCX 
AND AX, SI 
CMOVZ SI, AX 
AND SIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], CX 
CMOVO EDX, ECX 
CMOVBE DI, AX 
SETNLE AL 
NOT AX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG DL, CL # instrumentation
AND SIL, 63 # instrumentation
LAHF  
SETL CL 
CMC  
CMOVLE CX, AX 
TEST EAX, -463194877 
BTC RCX, -43 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RBX] 
CMOVZ EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
BTR RCX, -90 
TEST AX, 21114 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDX 
AND SIL, 73 # instrumentation
CMOVNB BX, AX 
CMOVP DX, DI 
XOR SIL, SIL 
AND AX, 33 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 33 
MOV ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
