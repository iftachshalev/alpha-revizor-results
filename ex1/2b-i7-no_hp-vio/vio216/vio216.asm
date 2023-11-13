.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
SETNO CL 
AND RSI, -88 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDX] 
XOR EAX, -1500875110 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDX] 
BT BX, -10 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RSI] 
BTC RAX, 18 
NOP  
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], EDI 
BTR ESI, 70 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RAX], EDX 
LEA EAX, qword ptr [RAX + RDI + 10317] 
CMOVNBE DX, BX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], DIL 
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
XOR AL, -86 
BTR RBX, -72 
SETBE DL 
BTR EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], ESI 
SETNZ BL 
CMPXCHG ESI, EAX 
SETP BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], 84 
XOR RAX, 2039124817 
SETNLE SIL 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], -116 
AND RBX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RBX] 
XCHG RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
