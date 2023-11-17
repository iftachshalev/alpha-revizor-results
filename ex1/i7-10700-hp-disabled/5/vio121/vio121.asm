.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
SETNO BL 
CMPXCHG DX, DI 
AND RDI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTC word ptr [R14 + RDI], AX 
BTS CX, 123 
CMOVNB RAX, RDX 
BTS DI, 15 
AND DIL, 39 # instrumentation
SETS AL 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BTS RSI, -65 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RSI] 
AND DIL, 84 # instrumentation
CMOVNB BX, DI 
BTR RAX, 5 
XADD AL, CL 
BT BX, -40 
NOT BL 
XOR EAX, -674866225 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RDI 
TEST SIL, DIL 
CMOVNL ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RCX] 
XOR EAX, 1654609412 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RCX] 
CMOVBE DX, SI 
SETLE BL 
CMOVO RDX, RSI 
AND ESI, 91 
MOV EDI, EAX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 18 # instrumentation
CMOVP RSI, RDI 
OR AX, 23590 
BT SI, 80 
TEST DIL, 116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
