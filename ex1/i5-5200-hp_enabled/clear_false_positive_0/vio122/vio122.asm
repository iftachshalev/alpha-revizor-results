.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST BL, 7 
CMOVNZ AX, AX 
CMOVNZ RSI, RDI 
XOR SI, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV EDI, 981083203 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], EDI 
CMPXCHG RDI, RDI 
CMOVBE EAX, EDI 
NOP  
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], SIL 
OR ESI, EAX 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1166313636 
SETB CL 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
AND DIL, 100 # instrumentation
CMOVB CX, DX 
SAHF  
BTC CX, 107 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -94 # instrumentation
SETNS DL 
AND SIL, -54 
BTR DX, 87 
NOP  
AND DIL, -4 
NOT BX 
TEST EAX, -1623385120 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR DI, 0b1000000000000000 # instrumentation
BSF SI, DI 
TEST RBX, 326903365 
AND RCX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RCX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
MOV CL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
