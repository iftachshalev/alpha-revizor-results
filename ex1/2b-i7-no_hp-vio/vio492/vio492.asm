.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], AX 
CMOVL AX, DX 
OR EAX, -1555918359 
TEST CX, 10527 
CWDE  
BTS EDI, 77 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
CBW  
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
CDQ  
XCHG RSI, RCX 
NOT RAX 
TEST RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], AX 
XOR AL, 41 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
BTS SI, DX 
TEST BL, -86 
XCHG RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDI 
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], AL 
CMPXCHG EAX, EAX 
XOR RAX, 227921875 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], RBX 
AND SI, -127 
CMOVBE SI, BX 
CDQ  
CMOVNO RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RBX], 2 
AND RCX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RCX] 
AND DL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
