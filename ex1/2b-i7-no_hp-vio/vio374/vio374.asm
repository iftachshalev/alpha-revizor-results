.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 100 # instrumentation
SETB CL 
BTR EAX, 77 
OR AX, 12062 
AND DI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDI] 
CBW  
NOT BL 
CMOVNZ CX, DX 
XCHG SI, AX 
MOV RCX, 5166830553679850639 
CMPXCHG ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDI] 
BT RSI, -66 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], 4 
AND SIL, 1 # instrumentation
CMOVP CX, AX 
SETNBE BL 
CMOVL RDI, RAX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -17 # instrumentation
MOVZX RDX, CL 
CMOVNS ESI, EDX 
BTC EDX, 61 
XCHG RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RBX], 1 
CMOVNZ RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
AND AL, 119 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], CX 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], DI 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 107080247 
XOR AX, -13718 
TEST BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
