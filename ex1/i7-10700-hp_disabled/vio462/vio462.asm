.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RSI] 
AND EAX, -123055758 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDI 
XCHG EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], BL 
XOR BL, AL 
CMOVL AX, DI 
SETNZ BL 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
BTS ESI, 23 
AND RCX, RDX 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RDI], EBX 
TEST BX, DX 
OR DL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
NOT CX 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RAX] 
OR SIL, DL 
SETNB BL 
TEST AL, 123 
JMP .bb_main.3 
.bb_main.3:
AND RBX, RCX 
CMOVNLE EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RAX] 
TEST DI, -23336 
TEST AX, 20886 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RSI] 
TEST RBX, RDX 
BTC RCX, 116 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR DIL, 50 
NOP  
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 6 
SETZ BL 
SETNB DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
