.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -128 # instrumentation
CMOVBE CX, DX 
TEST ESI, 1116306991 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RCX] 
TEST AX, 2064 
CMOVNLE RDI, RSI 
CMPXCHG EBX, ECX 
CMOVNB DI, AX 
MOV AL, CL 
BTS EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
NOT EDX 
CMOVP RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RAX] 
CMOVO RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -90 
CMOVNB RBX, RBX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EDX, EAX 
MOV DL, 106 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDI] 
CMOVLE ECX, EDI 
SETNBE BL 
BTC RDI, RSI 
AND SIL, -71 # instrumentation
SETNBE AL 
CMOVP DI, AX 
MOVSX RSI, SI 
NOP  
CMOVNLE RCX, RDX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
BTS ECX, 114 
AND SIL, 36 # instrumentation
SETS DL 
MOVSX RAX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
