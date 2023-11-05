.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 49 # instrumentation
SETO CL 
CMOVO RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
SETNZ BL 
MOVSX ECX, CL 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EAX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 104 # instrumentation
CMOVNBE RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDX] 
BT BX, -102 
BTC RDX, 28 
AND DIL, -22 # instrumentation
MOVZX RSI, DI 
SETP CL 
CMOVNS RDI, RDX 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, 43 # instrumentation
CMOVZ DX, CX 
NOT RDX 
CMOVB RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], DI 
CMPXCHG AL, CL 
OR EAX, 113 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RSI] 
BT RAX, RDI 
BTS DX, -121 
CDQ  
MOVSX EDI, AX 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RSI] 
XADD BL, DIL 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -6 # instrumentation
BT SI, BX 
STC  
CMOVNBE RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
