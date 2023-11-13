.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RAX, RDI 
XOR AX, BX 
OR EDI, 66 
AND AX, -9280 
AND DI, DI 
XADD RDI, RDI 
CMOVNB DX, SI 
CMOVB RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RDX] 
SETP BL 
CMOVO RDX, RSI 
AND AL, -94 
TEST EDX, 394508453 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG DL, BL 
TEST DIL, CL 
OR CX, 31 
CMOVNS EAX, EAX 
CMOVBE RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
XOR EBX, 110 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EBX 
OR DL, BL 
CMC  
TEST DL, SIL 
MOVSX EAX, BL 
SETNLE SIL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RSI] 
SETB DL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
BTS DX, AX 
AND SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
