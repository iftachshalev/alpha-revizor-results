.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RSI] 
OR RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EAX 
BTC DI, DX 
XADD CL, BL 
AND RDI, RSI 
BTC RDI, RAX 
AND AX, CX 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
SETNB CL 
XOR CL, 88 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RBX] 
MOV AL, 105 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RCX] 
CMOVO RDI, RSI 
BTC RDI, 9 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], -17 
TEST DI, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1427807364 
CLC  
CMOVB AX, BX 
BTR EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTC word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DL 
SETNBE SIL 
OR DIL, CL 
XOR SI, -54 
CMOVO RDI, RDI 
XOR SIL, 88 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RCX 
BTC RCX, 91 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
