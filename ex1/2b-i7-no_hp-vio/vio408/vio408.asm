.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 5 
AND DIL, 93 # instrumentation
SETLE AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDX], 6 
CMOVNBE RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], -35 
CMOVBE RCX, RDI 
LEA RDI, qword ptr [RDX + RCX + 10580] 
XOR RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RDX 
SETP CL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EAX, 647765906 
XOR EDI, 42 
AND RDX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDX] 
SETB DL 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], RDI 
AND RSI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTS word ptr [R14 + RSI], CX 
XOR CX, DI 
BT RDI, RCX 
OR DL, BL 
TEST AL, CL 
XOR SIL, -124 
SAHF  
AND DI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
MOVSX EBX, BL 
OR AL, 85 
AND RSI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RSI], 7 
BTS AX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
