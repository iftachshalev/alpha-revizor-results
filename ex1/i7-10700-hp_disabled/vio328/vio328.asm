.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, 115 
AND RCX, -95 
SETNP CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RSI] 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, -17 # instrumentation
SETNZ BL 
CMOVNL AX, DI 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], RBX 
SETBE BL 
CMPXCHG DIL, CL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], DIL 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDX] 
CMOVB EAX, EDX 
CWDE  
SETZ DL 
SETNZ DL 
CMOVNZ EBX, EBX 
CMOVNB SI, DI 
CMOVZ EDI, ESI 
CMOVBE DX, SI 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RDX 
BT EAX, 74 
AND RDI, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDI] 
CMC  
BTR RDI, 2 
AND SIL, -22 # instrumentation
CMOVNZ SI, DI 
CMOVO RCX, RDX 
MOVZX RAX, DL 
XOR DIL, BL 
CMOVNP BX, DX 
AND AL, -110 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
