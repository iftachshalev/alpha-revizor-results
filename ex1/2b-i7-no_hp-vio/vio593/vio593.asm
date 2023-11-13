.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BX, -71 
CMOVNL RDI, RAX 
BT ECX, 112 
AND SIL, -106 # instrumentation
CMOVP RDX, RBX 
CMOVNS RDX, RCX 
AND AL, -75 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
SETO CL 
SETNB CL 
CMOVNL RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RAX] 
XOR CX, -91 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], AL 
BSWAP EDI 
TEST BL, -99 
BT RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], CL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
STD  
CMOVZ RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
SETNZ BL 
MOVZX BX, CL 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], DIL 
BTS CX, 60 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], -3 
TEST AX, -24260 
TEST CX, AX 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], 125 
BTC EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
