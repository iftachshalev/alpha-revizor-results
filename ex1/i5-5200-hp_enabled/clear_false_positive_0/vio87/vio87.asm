.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
NOT BL 
XADD CL, DL 
BTC BX, 76 
XOR RAX, 1099037176 
AND RBX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
BTS EDI, ESI 
AND SIL, -81 # instrumentation
CMOVS RDX, RDX 
OR ECX, EAX 
AND DL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], 76 
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
TEST RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
TEST SI, SI 
CMOVS RDX, RDX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RCX 
BT BX, -16 
CMOVNBE SI, AX 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], -1637287678 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RCX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], -41 
SETL AL 
XOR EAX, -2141138962 
MOVZX ESI, BL 
SETO DL 
MOV ECX, EDI 
STC  
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], BL 
LEA EDX, qword ptr [RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
